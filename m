Return-Path: <libertas-dev-bounces+lists+libertas-dev=lfdr.de@lists.infradead.org>
X-Original-To: lists+libertas-dev@lfdr.de
Delivered-To: lists+libertas-dev@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 783AE1A63DB
	for <lists+libertas-dev@lfdr.de>; Mon, 13 Apr 2020 09:54:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=U2XVNBi3DPY2b0GpUczI/s5TXt6KUGi7ZEBXNKnjlSA=; b=ArruaCRMs8mgV3
	HVm3L6J+qbb5SMDextUhn8GKwOwlNmhvOTZhnpm7CWYKQP8AhK41OO2mcNmuUvDj6zj0tx0YsmZME
	+Tb5CEE0HSv0lg91otq8q5kDfFTNMO3yGJfRXQtYKYvM3pe+JxYeSHGNh5gkL2WzxUqlh09WYSs5T
	5TnWeNDP9gxMFqUuvZjcjZUsN8f389zzgFL+vHV2Rg4MQhiS8b1SOCMeYfc/YoxPFiy+j3zRMVQUL
	PpnYBm+jZO0RetQFPySde6+Y7UP8KdHjDfRywUVuZkg7Qp0kqMP6uoEZMecCwYFxkF22c/NJf9f0k
	qvPJfMNzzCh8eaYB3ZdA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jNtvQ-00075D-EB; Mon, 13 Apr 2020 07:54:36 +0000
Received: from szxga04-in.huawei.com ([45.249.212.190] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jNtvK-00072D-2X
 for libertas-dev@lists.infradead.org; Mon, 13 Apr 2020 07:54:32 +0000
Received: from DGGEMS404-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id 2976A9A447D55784BA21;
 Mon, 13 Apr 2020 15:54:09 +0800 (CST)
Received: from huawei.com (10.175.124.28) by DGGEMS404-HUB.china.huawei.com
 (10.3.19.204) with Microsoft SMTP Server id 14.3.487.0; Mon, 13 Apr 2020
 15:53:58 +0800
From: Jason Yan <yanaijie@huawei.com>
To: <kvalo@codeaurora.org>, <davem@davemloft.net>, <yanaijie@huawei.com>,
 <libertas-dev@lists.infradead.org>, <linux-wireless@vger.kernel.org>,
 <netdev@vger.kernel.org>, <linux-kernel@vger.kernel.org>
Subject: [PATCH] libertas: make lbs_process_event() void
Date: Mon, 13 Apr 2020 16:20:22 +0800
Message-ID: <20200413082022.22380-1-yanaijie@huawei.com>
X-Mailer: git-send-email 2.21.1
MIME-Version: 1.0
X-Originating-IP: [10.175.124.28]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200413_005430_675400_4C586A83 
X-CRM114-Status: UNSURE (   8.23  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.190 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Hulk Robot <hulkci@huawei.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "libertas-dev" <libertas-dev-bounces@lists.infradead.org>
Errors-To: libertas-dev-bounces+lists+libertas-dev=lfdr.de@lists.infradead.org

Fix the following coccicheck warning:

drivers/net/wireless/marvell/libertas/cmdresp.c:225:5-8: Unneeded
variable: "ret". Return "0" on line 355

Reported-by: Hulk Robot <hulkci@huawei.com>
Signed-off-by: Jason Yan <yanaijie@huawei.com>
---
 drivers/net/wireless/marvell/libertas/cmd.h     | 2 +-
 drivers/net/wireless/marvell/libertas/cmdresp.c | 5 +----
 2 files changed, 2 insertions(+), 5 deletions(-)

diff --git a/drivers/net/wireless/marvell/libertas/cmd.h b/drivers/net/wireless/marvell/libertas/cmd.h
index 80878561cb90..3c193074662b 100644
--- a/drivers/net/wireless/marvell/libertas/cmd.h
+++ b/drivers/net/wireless/marvell/libertas/cmd.h
@@ -76,7 +76,7 @@ void lbs_mac_event_disconnected(struct lbs_private *priv,
 
 /* Events */
 
-int lbs_process_event(struct lbs_private *priv, u32 event);
+void lbs_process_event(struct lbs_private *priv, u32 event);
 
 
 /* Actual commands */
diff --git a/drivers/net/wireless/marvell/libertas/cmdresp.c b/drivers/net/wireless/marvell/libertas/cmdresp.c
index b73d08381398..cb515c5584c1 100644
--- a/drivers/net/wireless/marvell/libertas/cmdresp.c
+++ b/drivers/net/wireless/marvell/libertas/cmdresp.c
@@ -220,9 +220,8 @@ int lbs_process_command_response(struct lbs_private *priv, u8 *data, u32 len)
 	return ret;
 }
 
-int lbs_process_event(struct lbs_private *priv, u32 event)
+void lbs_process_event(struct lbs_private *priv, u32 event)
 {
-	int ret = 0;
 	struct cmd_header cmd;
 
 	switch (event) {
@@ -351,6 +350,4 @@ int lbs_process_event(struct lbs_private *priv, u32 event)
 		netdev_alert(priv->dev, "EVENT: unknown event id %d\n", event);
 		break;
 	}
-
-	return ret;
 }
-- 
2.21.1


_______________________________________________
libertas-dev mailing list
libertas-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/libertas-dev
