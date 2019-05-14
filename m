Return-Path: <libertas-dev-bounces+lists+libertas-dev=lfdr.de@lists.infradead.org>
X-Original-To: lists+libertas-dev@lfdr.de
Delivered-To: lists+libertas-dev@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 54B8D1D121
	for <lists+libertas-dev@lfdr.de>; Tue, 14 May 2019 23:14:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=p1qvfp5o13xkQ2hVsGajhoz8a1rb5IPykMQNp7b5fSs=; b=slryZLORgzINpq
	cvhWVO0/YHhncQUJHayMrSSuvX/dq/NTII7rYInTsfgXJJIZXe9sak3L7yYqnNiomXpHo0Bs7QHMc
	OHgLVkTAvqQodMKAmBRpyX8ZoJenlDYFcvHXZBtAav7Z5vxTpJKVag44jyNGQVtWgG0mficcYRhDX
	pCpWdn6pBM4cfOwtHT6oHb8dKxaNdsH3p/08ivae3BIJixVQA2uqCdRoTzzRg5UADHw5G1dnt0iq6
	i2H0Ec4P0hVlRCs731bnxEsrzRCsdnx6dOsT7/6jL4Iy5i3a5lid9Hzz6uaY16p466J/HxUKhCxvH
	li+2RTHj1Teich7n+P0Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQekc-0007dm-QM; Tue, 14 May 2019 21:14:18 +0000
Received: from youngberry.canonical.com ([91.189.89.112])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQekX-0007cy-Rk
 for libertas-dev@lists.infradead.org; Tue, 14 May 2019 21:14:15 +0000
Received: from cpc129250-craw9-2-0-cust139.know.cable.virginm.net
 ([82.43.126.140] helo=localhost)
 by youngberry.canonical.com with esmtpsa (TLS1.0:RSA_AES_256_CBC_SHA1:32)
 (Exim 4.76) (envelope-from <colin.king@canonical.com>)
 id 1hQekQ-0003ZL-OY; Tue, 14 May 2019 21:14:06 +0000
From: Colin King <colin.king@canonical.com>
To: Kalle Valo <kvalo@codeaurora.org>,
 "David S . Miller" <davem@davemloft.net>, libertas-dev@lists.infradead.org,
 linux-wireless@vger.kernel.org, netdev@vger.kernel.org
Subject: [PATCH] libertas/libertas_tf: fix spelling mistake "Donwloading" ->
 "Downloading"
Date: Tue, 14 May 2019 22:14:06 +0100
Message-Id: <20190514211406.6353-1-colin.king@canonical.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190514_141414_032016_F19587E2 
X-CRM114-Status: UNSURE (   9.08  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [91.189.89.112 listed in list.dnswl.org]
X-BeenThere: libertas-dev@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <libertas-dev.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/libertas-dev>,
 <mailto:libertas-dev-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/libertas-dev/>
List-Post: <mailto:libertas-dev@lists.infradead.org>
List-Help: <mailto:libertas-dev-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/libertas-dev>,
 <mailto:libertas-dev-request@lists.infradead.org?subject=subscribe>
Cc: kernel-janitors@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "libertas-dev" <libertas-dev-bounces@lists.infradead.org>
Errors-To: libertas-dev-bounces+lists+libertas-dev=lfdr.de@lists.infradead.org

From: Colin Ian King <colin.king@canonical.com>

There is are two spelling mistakes in lbtf_deb_usb2 messages, fix these.

Signed-off-by: Colin Ian King <colin.king@canonical.com>
---
 drivers/net/wireless/marvell/libertas/if_usb.c    | 2 +-
 drivers/net/wireless/marvell/libertas_tf/if_usb.c | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/net/wireless/marvell/libertas/if_usb.c b/drivers/net/wireless/marvell/libertas/if_usb.c
index 220dcdee8d2b..1d06fa564e28 100644
--- a/drivers/net/wireless/marvell/libertas/if_usb.c
+++ b/drivers/net/wireless/marvell/libertas/if_usb.c
@@ -367,7 +367,7 @@ static int if_usb_send_fw_pkt(struct if_usb_card *cardp)
 			     cardp->fwseqnum, cardp->totalbytes);
 	} else if (fwdata->hdr.dnldcmd == cpu_to_le32(FW_HAS_LAST_BLOCK)) {
 		lbs_deb_usb2(&cardp->udev->dev, "Host has finished FW downloading\n");
-		lbs_deb_usb2(&cardp->udev->dev, "Donwloading FW JUMP BLOCK\n");
+		lbs_deb_usb2(&cardp->udev->dev, "Downloading FW JUMP BLOCK\n");
 
 		cardp->fwfinalblk = 1;
 	}
diff --git a/drivers/net/wireless/marvell/libertas_tf/if_usb.c b/drivers/net/wireless/marvell/libertas_tf/if_usb.c
index a4b9ede70705..38f77b1a02ca 100644
--- a/drivers/net/wireless/marvell/libertas_tf/if_usb.c
+++ b/drivers/net/wireless/marvell/libertas_tf/if_usb.c
@@ -319,7 +319,7 @@ static int if_usb_send_fw_pkt(struct if_usb_card *cardp)
 	} else if (fwdata->hdr.dnldcmd == cpu_to_le32(FW_HAS_LAST_BLOCK)) {
 		lbtf_deb_usb2(&cardp->udev->dev,
 			"Host has finished FW downloading\n");
-		lbtf_deb_usb2(&cardp->udev->dev, "Donwloading FW JUMP BLOCK\n");
+		lbtf_deb_usb2(&cardp->udev->dev, "Downloading FW JUMP BLOCK\n");
 
 		/* Host has finished FW downloading
 		 * Donwloading FW JUMP BLOCK
-- 
2.20.1


_______________________________________________
libertas-dev mailing list
libertas-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/libertas-dev
