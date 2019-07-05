Return-Path: <libertas-dev-bounces+lists+libertas-dev=lfdr.de@lists.infradead.org>
X-Original-To: lists+libertas-dev@lfdr.de
Delivered-To: lists+libertas-dev@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2044460A88
	for <lists+libertas-dev@lfdr.de>; Fri,  5 Jul 2019 18:43:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IF2QpfgF7poiDYfFHb5DW8uCmFuWJnIBbWMLq9Y7du4=; b=halRY7A1lbh0Hl
	ogejs4MfMZerYlH/2iFVHq4dt3vViaxt19eVZnNNmFjKUMpG0EGDR5kmdRe25X5Y32Hb192bLI1dk
	L8Op1ok+K1BQUo5N0PLuHZlPJ2x/LVq3Zzsj1RiCmRh7RomzdQLUARCTjxv8ANgB2+nnWGiX11Ifh
	kY8Wa+luQCp+YODwnvwGa7anGc/sF8aL1g7xrz2N14l7mIQP5zGQ0ADD6M1Un0/SxXes1gyeHPG/y
	R57sw7JSV+Ron1dyzGt9JyOouTKoAx+/MRIZjHlgNAp6iVvCoq61dLNE2AyuAVWZ68hpA/de7Hp4T
	mOMmOj1vMRNkPYDYQMkQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hjRIZ-0003Mm-Fx; Fri, 05 Jul 2019 16:42:59 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hjRIV-0003Lc-SY
 for libertas-dev@lists.infradead.org; Fri, 05 Jul 2019 16:42:57 +0000
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id D5AA613AAE;
 Fri,  5 Jul 2019 16:42:54 +0000 (UTC)
Received: from ovpn-112-42.rdu2.redhat.com (ovpn-112-42.rdu2.redhat.com
 [10.10.112.42])
 by smtp.corp.redhat.com (Postfix) with ESMTP id C3A5884774;
 Fri,  5 Jul 2019 16:42:50 +0000 (UTC)
Message-ID: <ee4472e4728becc9713962ba264742cb1f337098.camel@redhat.com>
Subject: [PATCH v2] libertas: Fix a double free in if_spi_c2h_data()
From: Dan Williams <dcbw@redhat.com>
To: Kalle Valo <kvalo@codeaurora.org>
Date: Fri, 05 Jul 2019 11:42:48 -0500
In-Reply-To: <e679c9f99d6952f82924c71f036e4a196d0e72d4.camel@redhat.com>
References: <20190626100926.GD3242@mwanda>
 <be491ab35ba46111a1c90cc12b6d5ff6ea3f57e8.camel@redhat.com>
 <20190626132340.GE28859@kadam>
 <e679c9f99d6952f82924c71f036e4a196d0e72d4.camel@redhat.com>
User-Agent: Evolution 3.30.5 (3.30.5-1.fc29) 
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.29]); Fri, 05 Jul 2019 16:42:54 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190705_094255_938156_4127C785 
X-CRM114-Status: GOOD (  13.79  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [209.132.183.28 listed in list.dnswl.org]
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
Cc: Philip Rakity <prakity@yahoo.com>, libertas-dev@lists.infradead.org,
 kernel-janitors@vger.kernel.org, linux-wireless@vger.kernel.org,
 Lubomir Rintel <lkundrak@v3.sk>, Dan Carpenter <dan.carpenter@oracle.com>,
 Allison Randal <allison@lohutok.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "libertas-dev" <libertas-dev-bounces@lists.infradead.org>
Errors-To: libertas-dev-bounces+lists+libertas-dev=lfdr.de@lists.infradead.org

The lbs_process_rxed_packet() frees the skb.  It didn't originally, but
we fixed it in commit f54930f36311 ("libertas: don't leak skb on receive
error").

Reported-by: Dan Carpenter <dan.carpenter@oracle.com>
Signed-off-by: Dan Williams <dcbw@redhat.com>
---
 drivers/net/wireless/marvell/libertas/if_spi.c | 14 +++++---------
 1 file changed, 5 insertions(+), 9 deletions(-)

diff --git a/drivers/net/wireless/marvell/libertas/if_spi.c b/drivers/net/wireless/marvell/libertas/if_spi.c
index 27067e79e83fe..072da89c4986f 100644
--- a/drivers/net/wireless/marvell/libertas/if_spi.c
+++ b/drivers/net/wireless/marvell/libertas/if_spi.c
@@ -766,19 +766,15 @@ static int if_spi_c2h_data(struct if_spi_card *card)
 
 	/* Read the data from the WLAN module into our skb... */
 	err = spu_read(card, IF_SPI_DATA_RDWRPORT_REG, data, ALIGN(len, 4));
-	if (err)
-		goto free_skb;
+	if (err) {
+		dev_kfree_skb(skb);
+		goto out
+	}
 
 	/* pass the SKB to libertas */
 	err = lbs_process_rxed_packet(card->priv, skb);
-	if (err)
-		goto free_skb;
+	/* lbs_process_rxed_packet() consumes the skb */
 
-	/* success */
-	goto out;
-
-free_skb:
-	dev_kfree_skb(skb);
 out:
 	if (err)
 		netdev_err(priv->dev, "%s: err=%d\n", __func__, err);
-- 
2.20.1


_______________________________________________
libertas-dev mailing list
libertas-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/libertas-dev
