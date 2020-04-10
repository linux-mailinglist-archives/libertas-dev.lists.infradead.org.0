Return-Path: <libertas-dev-bounces+lists+libertas-dev=lfdr.de@lists.infradead.org>
X-Original-To: lists+libertas-dev@lfdr.de
Delivered-To: lists+libertas-dev@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 106BE1A4451
	for <lists+libertas-dev@lfdr.de>; Fri, 10 Apr 2020 11:12:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=TOM/06ORp31/blgT6NCGdxB+vlfBqZru7+dJYy7fumE=; b=Z1onioijcnL05w
	8nmHcJ/TLAFy5VVAOUKEjzOAXFLf4b+N7PuTmXs3UoIN4zozIOr52/D/JD5NMsterLDJtn9nFkKLJ
	i3EvH+lMdojWVxaKxNaBteXDnPFAA2LzyWYtzOk50y7uTgwl38+ZqdeUw3bTi/5Sat4f7ZFrXeyeT
	WVTSmUPiuyq/Y8dbHCNZ5nW6fHJymvt2gVxQXNRIvGgGzQdqbEixf8EnBSaFPBTdlPgRF1OH5XCs9
	WYvC7aVd9eWzWxuP3nlHgQW9UJUEmM9IoO4uwjt+H9k2DxwElheSOwj5sLpL68526l/anYKJJwh5G
	aCe6KOMAOgXECRSYqwZw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMphp-00035C-IK; Fri, 10 Apr 2020 09:12:09 +0000
Received: from szxga04-in.huawei.com ([45.249.212.190] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMphk-000329-P3
 for libertas-dev@lists.infradead.org; Fri, 10 Apr 2020 09:12:06 +0000
Received: from DGGEMS410-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id 3B8F83AAE95254E9681E;
 Fri, 10 Apr 2020 17:11:29 +0800 (CST)
Received: from huawei.com (10.175.124.28) by DGGEMS410-HUB.china.huawei.com
 (10.3.19.210) with Microsoft SMTP Server id 14.3.487.0; Fri, 10 Apr 2020
 17:11:20 +0800
From: Jason Yan <yanaijie@huawei.com>
To: <kvalo@codeaurora.org>, <davem@davemloft.net>, <colin.king@canonical.com>, 
 <yanaijie@huawei.com>, <dan.carpenter@oracle.com>, <lkundrak@v3.sk>,
 <libertas-dev@lists.infradead.org>, <linux-wireless@vger.kernel.org>,
 <netdev@vger.kernel.org>, <linux-kernel@vger.kernel.org>
Subject: [PATCH] libertas: make lbs_init_mesh() void
Date: Fri, 10 Apr 2020 17:09:42 +0800
Message-ID: <20200410090942.27239-1-yanaijie@huawei.com>
X-Mailer: git-send-email 2.17.2
MIME-Version: 1.0
X-Originating-IP: [10.175.124.28]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200410_021204_968387_D352E1AE 
X-CRM114-Status: UNSURE (   8.88  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.190 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "libertas-dev" <libertas-dev-bounces@lists.infradead.org>
Errors-To: libertas-dev-bounces+lists+libertas-dev=lfdr.de@lists.infradead.org

Fix the following coccicheck warning:

drivers/net/wireless/marvell/libertas/mesh.c:833:5-8: Unneeded variable:
"ret". Return "0" on line 874

Reported-by: Hulk Robot <hulkci@huawei.com>
Signed-off-by: Jason Yan <yanaijie@huawei.com>
---
 drivers/net/wireless/marvell/libertas/mesh.c | 6 +-----
 drivers/net/wireless/marvell/libertas/mesh.h | 2 +-
 2 files changed, 2 insertions(+), 6 deletions(-)

diff --git a/drivers/net/wireless/marvell/libertas/mesh.c b/drivers/net/wireless/marvell/libertas/mesh.c
index 44c8a550da4c..f5b78257d551 100644
--- a/drivers/net/wireless/marvell/libertas/mesh.c
+++ b/drivers/net/wireless/marvell/libertas/mesh.c
@@ -828,10 +828,8 @@ static void lbs_persist_config_remove(struct net_device *dev)
  * Check mesh FW version and appropriately send the mesh start
  * command
  */
-int lbs_init_mesh(struct lbs_private *priv)
+void lbs_init_mesh(struct lbs_private *priv)
 {
-	int ret = 0;
-
 	/* Determine mesh_fw_ver from fwrelease and fwcapinfo */
 	/* 5.0.16p0 9.0.0.p0 is known to NOT support any mesh */
 	/* 5.110.22 have mesh command with 0xa3 command id */
@@ -870,8 +868,6 @@ int lbs_init_mesh(struct lbs_private *priv)
 
 	/* Stop meshing until interface is brought up */
 	lbs_mesh_config(priv, CMD_ACT_MESH_CONFIG_STOP, 1);
-
-	return ret;
 }
 
 void lbs_start_mesh(struct lbs_private *priv)
diff --git a/drivers/net/wireless/marvell/libertas/mesh.h b/drivers/net/wireless/marvell/libertas/mesh.h
index 1561018f226f..d49717b20c09 100644
--- a/drivers/net/wireless/marvell/libertas/mesh.h
+++ b/drivers/net/wireless/marvell/libertas/mesh.h
@@ -16,7 +16,7 @@
 
 struct net_device;
 
-int lbs_init_mesh(struct lbs_private *priv);
+void lbs_init_mesh(struct lbs_private *priv);
 void lbs_start_mesh(struct lbs_private *priv);
 int lbs_deinit_mesh(struct lbs_private *priv);
 
-- 
2.17.2


_______________________________________________
libertas-dev mailing list
libertas-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/libertas-dev
