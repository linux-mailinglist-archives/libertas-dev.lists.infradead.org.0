Return-Path: <libertas-dev-bounces+lists+libertas-dev=lfdr.de@lists.infradead.org>
X-Original-To: lists+libertas-dev@lfdr.de
Delivered-To: lists+libertas-dev@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D2091DFB2D
	for <lists+libertas-dev@lfdr.de>; Sat, 23 May 2020 23:27:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:Mime-Version:Message-Id
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=FvEWDxXMvMdJ+yfWvBy7E4CE00YNBYq1QHap6FD/qRQ=; b=Q2lTRpY9CmCD1W
	E6Cfivpt9tYecwqN5UvmGMcbz0r+4r6oDuho4pK8wkaWbC7+JHaEUoAy/vxwYu7tWoZt9Dq8bkySZ
	85+9ZR8Ltvc8aefuhNYx1kfY34n/Z2dOn7Guiu4IlaVwqpnYdJ2ysFc5Yz3sXOZUEqQG/UorVtx3Q
	CrKN5Opn1vMgkUeSe0lZ/DfgTgEhs90OIFT5SVmYL6eU7zMkVNhTZ1E9GWtZs71twAl+uD/DvEZAz
	J8pTD6JYXWLO87LC3hKcMhgBI/tpjbl+Akav+NcGqbAdrRnWx4dt8ETE7CQrvR8iH+IW0OLKz87sy
	DM5eV7yn9rGblbaZezBw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jcbfE-0000yw-Vn; Sat, 23 May 2020 21:26:40 +0000
Received: from mail-yb1-xb49.google.com ([2607:f8b0:4864:20::b49])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jcbfB-0000yb-Sh
 for libertas-dev@lists.infradead.org; Sat, 23 May 2020 21:26:39 +0000
Received: by mail-yb1-xb49.google.com with SMTP id 207so13319639ybl.2
 for <libertas-dev@lists.infradead.org>; Sat, 23 May 2020 14:26:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:message-id:mime-version:subject:from:to:cc;
 bh=TrTjVo1OcoXHUCoJ8HjrgU12KCu7XFLQYbdnxvd251Y=;
 b=HLAhLxlvXnsfpG/KopUm9p5Je1BoyxhAuZlSqyLMcwVqB04pQDZm1PICjxrts0ozAV
 pEaYPWD7lan8aisHjsHqetSginIqCu17tn204RPBK/wcI3c4S9GzQMD73FujWAg7Uhfx
 e9ZjpVkmbIzmD/nM39awkYguZRJTkiLCxVgLmZDYRNmuCnVO7FfSwLJTs2VAWVzrDFZ3
 C9zvAlKr7rtl2kMHsnFqzrKcc00W1kPCf6TSB6iEeqic5i8br02wB+MW50rirfLpOkgW
 97BkPoG5Zz3Fsa9Mq2NYpwZNby+BqRvmp9QqPzMfteo6uw+9TMechD1BY6K7d7oFAOVx
 0fQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:message-id:mime-version:subject:from:to:cc;
 bh=TrTjVo1OcoXHUCoJ8HjrgU12KCu7XFLQYbdnxvd251Y=;
 b=F9NGefg7cn2ZnLZp/sBPk14HhFbx+1b0Kt9aqFgFbFGzEEq67hBCfuL3m9zEx+siOw
 juxBUrSV7kqw9xGykZ6Xu6FcQ1SlwsT2XGOToawXnkxlc2gitFSTKhCwclCk/1muHGXA
 AUdHVV07DFqqTw7nb0jwrhBlwYkFWwBOS2hSlBvY4gZmS+zjiAQV6rzhiKk2Yo13hDFX
 MXVap/curE+ywaEpevqinZh40MdOxKPdRoo60YA05fNEAzLACaGDTD1l7GiB621yjqTb
 psYKM90PiqYRI/WxGoNwrSITUVIJb9CQpqsn8JN2joKu2wHwiEOSf+F58NOC3yx/WjwS
 Fuyg==
X-Gm-Message-State: AOAM532+TrR1EOtOricszjjxhSnZQritxp4X+HOoHkxsfBRZfGJNTDfF
 qdep3qidAAa4iHBpBoJcoLch4rfiRwdJ
X-Google-Smtp-Source: ABdhPJxwW3ZnH52iCl4gZeP+CKsgfEGyKLlyuNnzeWwOEkG/Bs9soUUIFZHHEM2v0y3jaM4HUlricKQ4+sC8
X-Received: by 2002:a25:a508:: with SMTP id h8mr14282492ybi.219.1590269195703; 
 Sat, 23 May 2020 14:26:35 -0700 (PDT)
Date: Sat, 23 May 2020 22:26:28 +0100
Message-Id: <20200523212628.31526-1-pterjan@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.27.0.rc0.183.gde8f92d652-goog
Subject: [PATCH] libertas: Use shared constant for rfc1042 header
From: Pascal Terjan <pterjan@google.com>
To: Kalle Valo <kvalo@codeaurora.org>, "David S. Miller" <davem@davemloft.net>,
 Jakub Kicinski <kuba@kernel.org>, libertas-dev@lists.infradead.org, 
 linux-wireless@vger.kernel.org, netdev@vger.kernel.org, 
 linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200523_142637_951984_90689220 
X-CRM114-Status: UNSURE (   9.02  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:b49 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
Cc: Pascal Terjan <pterjan@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "libertas-dev" <libertas-dev-bounces@lists.infradead.org>
Errors-To: libertas-dev-bounces+lists+libertas-dev=lfdr.de@lists.infradead.org

This is one of the 9 drivers redefining rfc1042_header.

Signed-off-by: Pascal Terjan <pterjan@google.com>
---
 drivers/net/wireless/marvell/libertas/rx.c | 5 +----
 1 file changed, 1 insertion(+), 4 deletions(-)

diff --git a/drivers/net/wireless/marvell/libertas/rx.c b/drivers/net/wireless/marvell/libertas/rx.c
index 58a1fc433b73..f28aa09d1f9e 100644
--- a/drivers/net/wireless/marvell/libertas/rx.c
+++ b/drivers/net/wireless/marvell/libertas/rx.c
@@ -62,9 +62,6 @@ int lbs_process_rxed_packet(struct lbs_private *priv, struct sk_buff *skb)
 	struct rxpd *p_rx_pd;
 	int hdrchop;
 	struct ethhdr *p_ethhdr;
-	static const u8 rfc1042_eth_hdr[] = {
-		0xaa, 0xaa, 0x03, 0x00, 0x00, 0x00
-	};
 
 	BUG_ON(!skb);
 
@@ -102,7 +99,7 @@ int lbs_process_rxed_packet(struct lbs_private *priv, struct sk_buff *skb)
 		sizeof(p_rx_pkt->eth803_hdr.src_addr));
 
 	if (memcmp(&p_rx_pkt->rfc1042_hdr,
-		   rfc1042_eth_hdr, sizeof(rfc1042_eth_hdr)) == 0) {
+		   rfc1042_header, sizeof(rfc1042_header)) == 0) {
 		/*
 		 *  Replace the 803 header and rfc1042 header (llc/snap) with an
 		 *    EthernetII header, keep the src/dst and snap_type (ethertype)
-- 
2.27.0.rc0.183.gde8f92d652-goog


_______________________________________________
libertas-dev mailing list
libertas-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/libertas-dev
