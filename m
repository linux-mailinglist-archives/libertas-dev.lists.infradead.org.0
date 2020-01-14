Return-Path: <libertas-dev-bounces+lists+libertas-dev=lfdr.de@lists.infradead.org>
X-Original-To: lists+libertas-dev@lfdr.de
Delivered-To: lists+libertas-dev@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B2FB613A789
	for <lists+libertas-dev@lfdr.de>; Tue, 14 Jan 2020 11:40:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=fDE+tVBLAjUUxNUyu9Lz6VM6InBpK+j4wKgycxSN5WA=; b=YR7HNMF/s4BrTQ7oEnhtBnPXEt
	dOw1fWn8iT779B+qJ+MRUK5F3S044CnYX2mxwveNU35B9GwwEF2t7Wq1Cx5rY3/cX4mS7P86dTfSk
	39iBsRL5jMybp+L3yx5cSrh/FmOpvppqX6FSckJx2licxS5s3webCeZunkAR7jABF4HtdDIsPC3pD
	y27GZfnGcAXeM+7r/YCWMNs7SmKWWD8QicCYpa9W5/R4QHWkXeszKhfM9pGB6mcGotua7eN87taQv
	Orm3K6UNkFsgZHWavpAG/RlSAwdxgi8zZ7m8DNmd89IPqSmYzAOuoq9jAH1d6p8pA00v508pQru2d
	nenspR6Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irJcC-00045y-F1; Tue, 14 Jan 2020 10:40:04 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irJc1-00041O-KH
 for libertas-dev@lists.infradead.org; Tue, 14 Jan 2020 10:39:59 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id 604B3ACA0;
 Tue, 14 Jan 2020 10:39:52 +0000 (UTC)
From: Nicolai Stange <nstange@suse.de>
To: Kalle Valo <kvalo@codeaurora.org>
Subject: [PATCH 2/2] libertas: make lbs_ibss_join_existing() return error code
 on rates overflow
Date: Tue, 14 Jan 2020 11:39:03 +0100
Message-Id: <20200114103903.2336-3-nstange@suse.de>
X-Mailer: git-send-email 2.16.4
In-Reply-To: <20200114103903.2336-1-nstange@suse.de>
References: <87woa04t2v.fsf@suse.de>
 <20200114103903.2336-1-nstange@suse.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200114_023953_806684_A4936293 
X-CRM114-Status: GOOD (  11.06  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [195.135.220.15 listed in wl.mailspike.net]
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Nicolai Stange <nstange@suse.de>, libertas-dev@lists.infradead.org,
 Takashi Iwai <tiwai@suse.de>, netdev@vger.kernel.org,
 linux-wireless@vger.kernel.org, linux-kernel@vger.kernel.org,
 Wen Huang <huangwenabc@gmail.com>, Miroslav Benes <mbenes@suse.cz>,
 "David S. Miller" <davem@davemloft.net>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "libertas-dev" <libertas-dev-bounces@lists.infradead.org>
Errors-To: libertas-dev-bounces+lists+libertas-dev=lfdr.de@lists.infradead.org

Commit e5e884b42639 ("libertas: Fix two buffer overflows at parsing bss
descriptor") introduced a bounds check on the number of supplied rates to
lbs_ibss_join_existing() and made it to return on overflow.

However, the aforementioned commit doesn't set the return value accordingly
and thus, lbs_ibss_join_existing() would return with zero even though it
failed.

Make lbs_ibss_join_existing return -EINVAL in case the bounds check on the
number of supplied rates fails.

Fixes: e5e884b42639 ("libertas: Fix two buffer overflows at parsing bss
                      descriptor")
Signed-off-by: Nicolai Stange <nstange@suse.de>
---
 drivers/net/wireless/marvell/libertas/cfg.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/net/wireless/marvell/libertas/cfg.c b/drivers/net/wireless/marvell/libertas/cfg.c
index 68985d766349..4e3de684928b 100644
--- a/drivers/net/wireless/marvell/libertas/cfg.c
+++ b/drivers/net/wireless/marvell/libertas/cfg.c
@@ -1786,6 +1786,7 @@ static int lbs_ibss_join_existing(struct lbs_private *priv,
 		if (rates_max > MAX_RATES) {
 			lbs_deb_join("invalid rates");
 			rcu_read_unlock();
+			ret = -EINVAL;
 			goto out;
 		}
 		rates = cmd.bss.rates;
-- 
2.16.4


_______________________________________________
libertas-dev mailing list
libertas-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/libertas-dev
