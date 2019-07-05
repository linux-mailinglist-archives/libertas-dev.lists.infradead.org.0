Return-Path: <libertas-dev-bounces+lists+libertas-dev=lfdr.de@lists.infradead.org>
X-Original-To: lists+libertas-dev@lfdr.de
Delivered-To: lists+libertas-dev@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F11C1606E7
	for <lists+libertas-dev@lfdr.de>; Fri,  5 Jul 2019 15:55:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=pcDXAXeYXhQuyJ4D5E/1UA+vfYV+zHF0xEDy6HCajw4=; b=HwiWC8I+3ux5e7
	Y+wjdIZra2bse8E47FUfs/IQOS6SH/knh7Lu/LP/qlWiQAM5RfctK0A3vgGtbBd3AGzKcnL1NQcnH
	rvWpKIxUOhs2r6c+rwXzod/bC6I3PXv+G5SPnc2pb6WbY1g3bWnhu2Mw3bXQACW8B1Auq1OkxY0Hl
	2vRLjCWqV3Y7TCfpc+Ubo4UeyjwSgHXLtY0XhG69JfJ0OhIyBeoq4PljnsJyhEWs/X2z0dGCTG+s1
	slF7Qq8/X6b52bxcXJ4f6pmxNYG8UxS7pLxY8i7MuTJu4UaRIECEm8KWlVIIt5gzCB972QZi2GzJN
	Q1/9mLLoC4n+EWgB0Axw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hjOgA-0005Df-Ig; Fri, 05 Jul 2019 13:55:10 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hjJQl-0004lg-UK
 for libertas-dev@bombadil.infradead.org; Fri, 05 Jul 2019 08:18:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:Content-Type:
 MIME-Version:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=e3UvMr+vKCUwa/C+ekCwkHSY6PHjTdfwI/NZqVt7swg=; b=m+JTlOUwl1h6c44JcopG0kOzYG
 Zww15EPuXBDuwhA1UrsaKqvWHjQsGaxYjmoOsUXeqLrAcF1bgykyX1eZ1CmMXGWEjcgeeeOGV1X9e
 6qP3m58TFCKR2fYzrkAbVc8hJe5//fbYovg8OtdDJN5HGxeFquYqpEkoOEal/UXgmwmKTWpsFedrN
 rhEl6SEIY2ukdV2G4RMOF2028+qm39zsURffewLwtNOjRNpJvUePimRE91kv6byABHB0LfE8QKAXo
 YtMv/rgKBLar382+SWLm0mSVcXmnADinhyDcHR+DwzTyfmCLVuGY2S+wcEjsCJP1IACBknzOYzdhi
 ha71TNqw==;
Received: from youngberry.canonical.com ([91.189.89.112])
 by casper.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hjJQd-0005Hy-0c
 for libertas-dev@lists.infradead.org; Fri, 05 Jul 2019 08:18:48 +0000
Received: from 1.general.cking.uk.vpn ([10.172.193.212] helo=localhost)
 by youngberry.canonical.com with esmtpsa (TLS1.0:RSA_AES_256_CBC_SHA1:32)
 (Exim 4.76) (envelope-from <colin.king@canonical.com>)
 id 1hjJPS-0004Yw-Sd; Fri, 05 Jul 2019 08:17:34 +0000
From: Colin King <colin.king@canonical.com>
To: Kalle Valo <kvalo@codeaurora.org>,
 "David S . Miller" <davem@davemloft.net>, libertas-dev@lists.infradead.org,
 linux-wireless@vger.kernel.org, netdev@vger.kernel.org
Subject: [PATCH] libertas: remove redundant assignment to variable ret
Date: Fri,  5 Jul 2019 09:17:34 +0100
Message-Id: <20190705081734.15292-1-colin.king@canonical.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190705_091847_086760_D2E9C23A 
X-CRM114-Status: GOOD (  12.27  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on casper.infradead.org summary:
 Content analysis details:   (-5.0 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [91.189.89.112 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: kernel-janitors@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "libertas-dev" <libertas-dev-bounces@lists.infradead.org>
Errors-To: libertas-dev-bounces+lists+libertas-dev=lfdr.de@lists.infradead.org

From: Colin Ian King <colin.king@canonical.com>

The variable ret is being initialized with a value that is never
read and it is being updated later with a new value. The
initialization is redundant and can be removed.

Addresses-Coverity: ("Unused value")
Signed-off-by: Colin Ian King <colin.king@canonical.com>
---
 drivers/net/wireless/marvell/libertas/main.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/wireless/marvell/libertas/main.c b/drivers/net/wireless/marvell/libertas/main.c
index 5968852b65a7..2233b59cdf44 100644
--- a/drivers/net/wireless/marvell/libertas/main.c
+++ b/drivers/net/wireless/marvell/libertas/main.c
@@ -1046,7 +1046,7 @@ int lbs_rtap_supported(struct lbs_private *priv)
 int lbs_start_card(struct lbs_private *priv)
 {
 	struct net_device *dev = priv->dev;
-	int ret = -1;
+	int ret;
 
 	/* poke the firmware */
 	ret = lbs_setup_firmware(priv);
-- 
2.20.1


_______________________________________________
libertas-dev mailing list
libertas-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/libertas-dev
