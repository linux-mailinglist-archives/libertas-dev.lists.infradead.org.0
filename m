Return-Path: <libertas-dev-bounces+lists+libertas-dev=lfdr.de@lists.infradead.org>
X-Original-To: lists+libertas-dev@lfdr.de
Delivered-To: lists+libertas-dev@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EE3A656A2E
	for <lists+libertas-dev@lfdr.de>; Wed, 26 Jun 2019 15:17:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uG7KMqy0z28Yprap5t6JEGibRWBjk2skV3jaoDDJO5I=; b=m3yV5Cam/jPEbE
	Aigt/zATDtaCq6bEm0DEdWf7w1AoPsTMJwpILzGIqIbkzOaDWMuo8+5TUghV+hTkmcwv65LdGq27h
	a0iMBqBBi8dJ9eTFjvQsFFPIo78FwSrL3iYMynuc/P24Bv1jh2nn30OP0HCKv3EczYW/8dmEdTfj8
	p6sZutXBALFxmVMz9t7r1lFA15i0Kh2Ah2KeH5j8lwOPydCLKYK2dIRFV5wiBvl8Hft1Bsg38RwuO
	laTFPKKqZiRdCFvJFip/semxJsHK9m3H1bz64qVIZ5f2SUXd5CRYNPgoTaPOCA/WESeIlAdsM2OxW
	ZwxHN7iaqcYQT2G2Lhag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hg7nR-000363-IZ; Wed, 26 Jun 2019 13:17:09 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hg7n1-0002mC-Mm
 for libertas-dev@lists.infradead.org; Wed, 26 Jun 2019 13:16:45 +0000
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id D1D7F31628F4;
 Wed, 26 Jun 2019 13:16:25 +0000 (UTC)
Received: from ovpn-112-45.rdu2.redhat.com (ovpn-112-45.rdu2.redhat.com
 [10.10.112.45])
 by smtp.corp.redhat.com (Postfix) with ESMTP id A3FD55D71C;
 Wed, 26 Jun 2019 13:16:23 +0000 (UTC)
Message-ID: <be491ab35ba46111a1c90cc12b6d5ff6ea3f57e8.camel@redhat.com>
Subject: Re: [PATCH] libertas: Fix a double free in if_spi_c2h_data()
From: Dan Williams <dcbw@redhat.com>
To: Dan Carpenter <dan.carpenter@oracle.com>, Kalle Valo
 <kvalo@codeaurora.org>,  Philip Rakity <prakity@yahoo.com>
Date: Wed, 26 Jun 2019 08:16:22 -0500
In-Reply-To: <20190626100926.GD3242@mwanda>
References: <20190626100926.GD3242@mwanda>
User-Agent: Evolution 3.30.5 (3.30.5-1.fc29) 
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.41]); Wed, 26 Jun 2019 13:16:42 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190626_061643_789016_6B001447 
X-CRM114-Status: GOOD (  19.85  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [209.132.183.28 listed in list.dnswl.org]
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
Cc: linux-wireless@vger.kernel.org, Lubomir Rintel <lkundrak@v3.sk>,
 kernel-janitors@vger.kernel.org, Allison Randal <allison@lohutok.net>,
 libertas-dev@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "libertas-dev" <libertas-dev-bounces@lists.infradead.org>
Errors-To: libertas-dev-bounces+lists+libertas-dev=lfdr.de@lists.infradead.org

On Wed, 2019-06-26 at 13:09 +0300, Dan Carpenter wrote:
> The lbs_process_rxed_packet() frees the skb.  It didn't originally,
> but
> we fixed it in commit f54930f36311 ("libertas: don't leak skb on
> receive
> error").
> 
> Signed-off-by: Dan Carpenter <dan.carpenter@oracle.com>
> ---
>  drivers/net/wireless/marvell/libertas/if_spi.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/net/wireless/marvell/libertas/if_spi.c
> b/drivers/net/wireless/marvell/libertas/if_spi.c
> index 27067e79e83f..e38f02d1f2e4 100644
> --- a/drivers/net/wireless/marvell/libertas/if_spi.c
> +++ b/drivers/net/wireless/marvell/libertas/if_spi.c
> @@ -772,7 +772,7 @@ static int if_spi_c2h_data(struct if_spi_card
> *card)
>  	/* pass the SKB to libertas */
>  	err = lbs_process_rxed_packet(card->priv, skb);
>  	if (err)
> -		goto free_skb;
> +		goto out;  /* lbs_process_rxed_packet() frees skb */
>  
>  	/* success */
>  	goto out;

It can be further simplified (not compile tested yet):

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


_______________________________________________
libertas-dev mailing list
libertas-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/libertas-dev
