Return-Path: <libertas-dev-bounces+lists+libertas-dev=lfdr.de@lists.infradead.org>
X-Original-To: lists+libertas-dev@lfdr.de
Delivered-To: lists+libertas-dev@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F668119641
	for <lists+libertas-dev@lfdr.de>; Tue, 10 Dec 2019 22:25:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=53Qr+oJH98oNPNJgJNakhww0i4d9EHgmyvCeYBNUfJU=; b=mXEopYIzsZ7Wot
	2e+O8oYRYWgcTx3/0WtffG1R67cDke5FvnlB5y0j0vjE+HYASER5pjb4zF1UIV0h+GUQxNRSHDJk2
	cgewdA/Yx6Krr2m1i/T4mct/qZlnmJd2Ojk388gVHdjsJdESoiGxO+J05l44n/B4Ro6izgBZw2ilY
	espKtVG0dUbwBbR467UUihwzufM99zfF7AJWqWU6eVSpix9Uu9sd8HS1y2f5mAe0nAx2ppodVdN6J
	Muccy1MvDkBB+rOrqctImxbcNODOKBhDX/NxXKbE3Qkvc0sUDfBB3V2R6q8vFjxlR7VIct+iECQHv
	T+xV4whukvddS58V2PVQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ien0q-0007gx-TF; Tue, 10 Dec 2019 21:25:44 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ien0k-0007cr-5P
 for libertas-dev@lists.infradead.org; Tue, 10 Dec 2019 21:25:39 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 757E9207FF;
 Tue, 10 Dec 2019 21:25:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1576013137;
 bh=TwguYHy5B2a16ohKMwc5Zw/HtcD9V/CMiposwe5BYww=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=iN88OXThYgWjRaUO9bAro76ikREJcW0RyFM5mY9f/oSuMd0AgAchstMOQfLMRU4Qe
 /7fhAHGQc5z/tlXQCte5L8pLXieZzAShlQdsl4HcxOfffAWfwHB+JiHWrC/azjyQ6M
 VVnyzXNnymlW50z4o4NWr0g+o99gWFOMMNJ8/p/4=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 5.3 021/292] libertas: fix a potential NULL pointer
 dereference
Date: Tue, 10 Dec 2019 16:20:40 -0500
Message-Id: <20191210212511.11392-21-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191210212511.11392-1-sashal@kernel.org>
References: <20191210212511.11392-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191210_132538_298426_7FC5F82F 
X-CRM114-Status: UNSURE (   8.15  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
X-BeenThere: libertas-dev@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <libertas-dev.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/libertas-dev>,
 <mailto:libertas-dev-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/libertas-dev/>
List-Post: <mailto:libertas-dev@lists.infradead.org>
List-Help: <mailto:libertas-dev-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/libertas-dev>,
 <mailto:libertas-dev-request@lists.infradead.org?subject=subscribe>
Cc: Sasha Levin <sashal@kernel.org>, libertas-dev@lists.infradead.org,
 netdev@vger.kernel.org, linux-wireless@vger.kernel.org,
 Kalle Valo <kvalo@codeaurora.org>, Allen Pais <allen.pais@oracle.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "libertas-dev" <libertas-dev-bounces@lists.infradead.org>
Errors-To: libertas-dev-bounces+lists+libertas-dev=lfdr.de@lists.infradead.org

From: Allen Pais <allen.pais@oracle.com>

[ Upstream commit 7da413a18583baaf35dd4a8eb414fa410367d7f2 ]

alloc_workqueue is not checked for errors and as a result,
a potential NULL dereference could occur.

Signed-off-by: Allen Pais <allen.pais@oracle.com>
Signed-off-by: Kalle Valo <kvalo@codeaurora.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/net/wireless/marvell/libertas/if_sdio.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/drivers/net/wireless/marvell/libertas/if_sdio.c b/drivers/net/wireless/marvell/libertas/if_sdio.c
index 242d8845da3fa..30f1025ecb9bc 100644
--- a/drivers/net/wireless/marvell/libertas/if_sdio.c
+++ b/drivers/net/wireless/marvell/libertas/if_sdio.c
@@ -1179,6 +1179,10 @@ static int if_sdio_probe(struct sdio_func *func,
 
 	spin_lock_init(&card->lock);
 	card->workqueue = alloc_workqueue("libertas_sdio", WQ_MEM_RECLAIM, 0);
+	if (unlikely(!card->workqueue)) {
+		ret = -ENOMEM;
+		goto err_queue;
+	}
 	INIT_WORK(&card->packet_worker, if_sdio_host_to_card_worker);
 	init_waitqueue_head(&card->pwron_waitq);
 
@@ -1230,6 +1234,7 @@ static int if_sdio_probe(struct sdio_func *func,
 	lbs_remove_card(priv);
 free:
 	destroy_workqueue(card->workqueue);
+err_queue:
 	while (card->packets) {
 		packet = card->packets;
 		card->packets = card->packets->next;
-- 
2.20.1


_______________________________________________
libertas-dev mailing list
libertas-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/libertas-dev
