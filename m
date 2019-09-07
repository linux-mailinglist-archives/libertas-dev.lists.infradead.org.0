Return-Path: <libertas-dev-bounces+lists+libertas-dev=lfdr.de@lists.infradead.org>
X-Original-To: lists+libertas-dev@lfdr.de
Delivered-To: lists+libertas-dev@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C1E4DAC73A
	for <lists+libertas-dev@lfdr.de>; Sat,  7 Sep 2019 17:19:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=DPF8oV/VvXRi3bJZYRqU/dv5dsI+BSXz9D9FH6w3KCA=; b=ppqpAe2uvoR7MF
	m2+XBUwUZyb93GegC/2GtLDPHTVRF3C2M9bm+EiL2WSL4b/P3ZlQweMVh+IDCkJ+sVBQVAeDKyRYv
	Saz5o3xmU2gDDKc30468V3ITi3hdgkWxJF0aXfS68nXEQ14ltWdGPWhERsu56W7vRbxtJUmFsDZk9
	q3SnvunR4oZ+5djCNzvBOoHprt8Q4Sbd/IpxkIMyQ+iGcjJw7BhmLoF9Q12WUZC8MI2bCtkVguoCu
	3dRSDEO8NNrLNyIFyzTYECA9A5yBTLlZ6bvrCFwl0VNrAVsIzPSkS1zm9mco1P2OgfcTqnENBxaMN
	WEo0rtMOmRx7upUjMj3w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i6cUa-0001B3-NN; Sat, 07 Sep 2019 15:19:12 +0000
Received: from shell.v3.sk ([90.176.6.54])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i6cUV-0001AA-MA
 for libertas-dev@lists.infradead.org; Sat, 07 Sep 2019 15:19:09 +0000
Received: from localhost (localhost [127.0.0.1])
 by zimbra.v3.sk (Postfix) with ESMTP id F2876D986A;
 Sat,  7 Sep 2019 17:19:01 +0200 (CEST)
Received: from shell.v3.sk ([127.0.0.1])
 by localhost (zimbra.v3.sk [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id ZCKQLd4J0DBe; Sat,  7 Sep 2019 17:18:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
 by zimbra.v3.sk (Postfix) with ESMTP id F22C9D986F;
 Sat,  7 Sep 2019 17:18:57 +0200 (CEST)
X-Virus-Scanned: amavisd-new at zimbra.v3.sk
Received: from shell.v3.sk ([127.0.0.1])
 by localhost (zimbra.v3.sk [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id z3rDQpi2jIXx; Sat,  7 Sep 2019 17:18:57 +0200 (CEST)
Received: from belphegor.brq.redhat.com (nat-pool-brq-t.redhat.com
 [213.175.37.10])
 by zimbra.v3.sk (Postfix) with ESMTPSA id 0D5F9D986A;
 Sat,  7 Sep 2019 17:18:56 +0200 (CEST)
From: Lubomir Rintel <lkundrak@v3.sk>
To: Kalle Valo <kvalo@codeaurora.org>
Subject: [PATCH] libertas: use mesh_wdev->ssid instead of priv->mesh_ssid
Date: Sat,  7 Sep 2019 17:18:55 +0200
Message-Id: <20190907151855.2637984-1-lkundrak@v3.sk>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190907_081908_034394_5BD334F6 
X-CRM114-Status: UNSURE (   9.64  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: netdev@vger.kernel.org, Lubomir Rintel <lkundrak@v3.sk>,
 linux-wireless@vger.kernel.org, linux-kernel@vger.kernel.org,
 libertas-dev@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "libertas-dev" <libertas-dev-bounces@lists.infradead.org>
Errors-To: libertas-dev-bounces+lists+libertas-dev=lfdr.de@lists.infradead.org

With the commit e86dc1ca4676 ("Libertas: cfg80211 support") we've lost
the ability to actually set the Mesh SSID from userspace.
NL80211_CMD_SET_INTERFACE with NL80211_ATTR_MESH_ID sets the mesh point
interface's ssid field. Let's use that one for the Libertas Mesh
operation

Signed-off-by: Lubomir Rintel <lkundrak@v3.sk>
---
 drivers/net/wireless/marvell/libertas/dev.h  |  2 --
 drivers/net/wireless/marvell/libertas/mesh.c | 31 +++++++++++++-------
 drivers/net/wireless/marvell/libertas/mesh.h |  3 +-
 3 files changed, 21 insertions(+), 15 deletions(-)

diff --git a/drivers/net/wireless/marvell/libertas/dev.h b/drivers/net/wireless/marvell/libertas/dev.h
index 4691349300265..4b6e05a8e5d54 100644
--- a/drivers/net/wireless/marvell/libertas/dev.h
+++ b/drivers/net/wireless/marvell/libertas/dev.h
@@ -58,8 +58,6 @@ struct lbs_private {
 #ifdef CONFIG_LIBERTAS_MESH
 	struct lbs_mesh_stats mstats;
 	uint16_t mesh_tlv;
-	u8 mesh_ssid[IEEE80211_MAX_SSID_LEN + 1];
-	u8 mesh_ssid_len;
 	u8 mesh_channel;
 #endif
 
diff --git a/drivers/net/wireless/marvell/libertas/mesh.c b/drivers/net/wireless/marvell/libertas/mesh.c
index 2315fdff56c2f..2747c957d18c9 100644
--- a/drivers/net/wireless/marvell/libertas/mesh.c
+++ b/drivers/net/wireless/marvell/libertas/mesh.c
@@ -86,6 +86,7 @@ static int lbs_mesh_config_send(struct lbs_private *priv,
 static int lbs_mesh_config(struct lbs_private *priv, uint16_t action,
 		uint16_t chan)
 {
+	struct wireless_dev *mesh_wdev;
 	struct cmd_ds_mesh_config cmd;
 	struct mrvl_meshie *ie;
 
@@ -105,10 +106,17 @@ static int lbs_mesh_config(struct lbs_private *priv, uint16_t action,
 		ie->val.active_protocol_id = MARVELL_MESH_PROTO_ID_HWMP;
 		ie->val.active_metric_id = MARVELL_MESH_METRIC_ID;
 		ie->val.mesh_capability = MARVELL_MESH_CAPABILITY;
-		ie->val.mesh_id_len = priv->mesh_ssid_len;
-		memcpy(ie->val.mesh_id, priv->mesh_ssid, priv->mesh_ssid_len);
+
+		if (priv->mesh_dev) {
+			mesh_wdev = priv->mesh_dev->ieee80211_ptr;
+			ie->val.mesh_id_len = mesh_wdev->mesh_id_up_len;
+			memcpy(ie->val.mesh_id, mesh_wdev->ssid,
+						mesh_wdev->mesh_id_up_len);
+		}
+
 		ie->len = sizeof(struct mrvl_meshie_val) -
-			IEEE80211_MAX_SSID_LEN + priv->mesh_ssid_len;
+			IEEE80211_MAX_SSID_LEN + ie->val.mesh_id_len;
+
 		cmd.length = cpu_to_le16(sizeof(struct mrvl_meshie_val));
 		break;
 	case CMD_ACT_MESH_CONFIG_STOP:
@@ -117,8 +125,8 @@ static int lbs_mesh_config(struct lbs_private *priv, uint16_t action,
 		return -1;
 	}
 	lbs_deb_cmd("mesh config action %d type %x channel %d SSID %*pE\n",
-		    action, priv->mesh_tlv, chan, priv->mesh_ssid_len,
-		    priv->mesh_ssid);
+		    action, priv->mesh_tlv, chan, ie->val.mesh_id_len,
+		    ie->val.mesh_id);
 
 	return __lbs_mesh_config_send(priv, &cmd, action, priv->mesh_tlv);
 }
@@ -863,12 +871,6 @@ int lbs_init_mesh(struct lbs_private *priv)
 	/* Stop meshing until interface is brought up */
 	lbs_mesh_config(priv, CMD_ACT_MESH_CONFIG_STOP, 1);
 
-	if (priv->mesh_tlv) {
-		sprintf(priv->mesh_ssid, "mesh");
-		priv->mesh_ssid_len = 4;
-		ret = 1;
-	}
-
 	return ret;
 }
 
@@ -997,6 +999,13 @@ static int lbs_add_mesh(struct lbs_private *priv)
 
 	mesh_wdev->iftype = NL80211_IFTYPE_MESH_POINT;
 	mesh_wdev->wiphy = priv->wdev->wiphy;
+
+	if (priv->mesh_tlv) {
+		sprintf(mesh_wdev->ssid, "mesh");
+		mesh_wdev->mesh_id_up_len = 4;
+		ret = 1;
+	}
+
 	mesh_wdev->netdev = mesh_dev;
 
 	mesh_dev->ml_priv = priv;
diff --git a/drivers/net/wireless/marvell/libertas/mesh.h b/drivers/net/wireless/marvell/libertas/mesh.h
index dfe22c91aade0..1561018f226fd 100644
--- a/drivers/net/wireless/marvell/libertas/mesh.h
+++ b/drivers/net/wireless/marvell/libertas/mesh.h
@@ -24,8 +24,7 @@ void lbs_remove_mesh(struct lbs_private *priv);
 
 static inline bool lbs_mesh_activated(struct lbs_private *priv)
 {
-	/* Mesh SSID is only programmed after successful init */
-	return priv->mesh_ssid_len != 0;
+	return !!priv->mesh_tlv;
 }
 
 int lbs_mesh_set_channel(struct lbs_private *priv, u8 channel);
-- 
2.21.0


_______________________________________________
libertas-dev mailing list
libertas-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/libertas-dev
