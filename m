Return-Path: <libertas-dev-bounces+lists+libertas-dev=lfdr.de@lists.infradead.org>
X-Original-To: lists+libertas-dev@lfdr.de
Delivered-To: lists+libertas-dev@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C1E2731D5
	for <lists+libertas-dev@lfdr.de>; Wed, 24 Jul 2019 16:38:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DtLBmb16pNrnsh72dGeUIAfqzgHHKriwXAetYEaNGpw=; b=qIdL5FDkvUKz3p
	QlyMr76T3S2w482gPuuyhueBzIObQ/nsauKKzLjNRHBvQLnVuj4yu6hZkcOHRc14gfALjTOE4pZpl
	9UUDd9JsNZJ8ozc/YJXxIqd+T/tVMTxlHch2Sw0IsyVJC5iyF8deiiAb+b5ypCSxS4KNZuacTlZe6
	4BtYe4Epb7VJ/sxBhnQvr7jsx6mVxtqK25guoYqaYISxyoBHfNuYDA/7YYxLF9jltxM3iOoSZA/cI
	qUb4m3FqWUn5xwW+G3q3owbZKjbe3qNO9LAGDJSIupC84rw/SMscITkVAdJNDoq3xGQ7R5Rjwawhq
	/CKnnrLx8nlsEohVccCg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqIPP-0006bq-OS; Wed, 24 Jul 2019 14:38:23 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqIPL-0006XJ-4V
 for libertas-dev@lists.infradead.org; Wed, 24 Jul 2019 14:38:21 +0000
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 37E6A8E233;
 Wed, 24 Jul 2019 14:38:18 +0000 (UTC)
Received: from ovpn-112-51.rdu2.redhat.com (ovpn-112-51.rdu2.redhat.com
 [10.10.112.51])
 by smtp.corp.redhat.com (Postfix) with ESMTP id A0BE010190A9;
 Wed, 24 Jul 2019 14:38:16 +0000 (UTC)
Message-ID: <9153261627a0f84b996e023f1349a2bc06dd03ee.camel@redhat.com>
Subject: [PATCH v3] libertas: Fix a double free in if_spi_c2h_data()
From: Dan Williams <dcbw@redhat.com>
To: Kalle Valo <kvalo@codeaurora.org>
Date: Wed, 24 Jul 2019 09:38:15 -0500
In-Reply-To: <ee4472e4728becc9713962ba264742cb1f337098.camel@redhat.com>
References: <20190626100926.GD3242@mwanda>
 <be491ab35ba46111a1c90cc12b6d5ff6ea3f57e8.camel@redhat.com>
 <20190626132340.GE28859@kadam>
 <e679c9f99d6952f82924c71f036e4a196d0e72d4.camel@redhat.com>
 <ee4472e4728becc9713962ba264742cb1f337098.camel@redhat.com>
User-Agent: Evolution 3.30.5 (3.30.5-1.fc29) 
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.26]); Wed, 24 Jul 2019 14:38:18 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190724_073819_203920_E1FCC13B 
X-CRM114-Status: GOOD (  14.94  )
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
 Lubomir Rintel <lkundrak@v3.sk>, Allison Randal <allison@lohutok.net>,
 Dan Carpenter <dan.carpenter@oracle.com>
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

Kalle: sorry about the build error; previous version of the patch before I fixed it.
Here's the correct one.

 drivers/net/wireless/marvell/libertas/if_spi.c | 14 +++++---------
 1 file changed, 5 insertions(+), 9 deletions(-)

diff --git a/drivers/net/wireless/marvell/libertas/if_spi.c b/drivers/net/wireless/marvell/libertas/if_spi.c
index 27067e79e83fe..d07fe82c557e8 100644
--- a/drivers/net/wireless/marvell/libertas/if_spi.c
+++ b/drivers/net/wireless/marvell/libertas/if_spi.c
@@ -766,19 +766,15 @@ static int if_spi_c2h_data(struct if_spi_card *card)
 
 	/* Read the data from the WLAN module into our skb... */
 	err = spu_read(card, IF_SPI_DATA_RDWRPORT_REG, data, ALIGN(len, 4));
-	if (err)
-		goto free_skb;
+	if (err) {
+		dev_kfree_skb(skb);
+		goto out;
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
