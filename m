Return-Path: <libertas-dev-bounces+lists+libertas-dev=lfdr.de@lists.infradead.org>
X-Original-To: lists+libertas-dev@lfdr.de
Delivered-To: lists+libertas-dev@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2EF6E56650
	for <lists+libertas-dev@lfdr.de>; Wed, 26 Jun 2019 12:12:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=gFOC7ecPSMT1Oy3Vj+YqzK/y7/MR0pMbYEXDg8Rzrak=; b=fVbrtHgwGmNczg
	YpEjGPxGHdhPRrmquolU5EZtm73nYJmgZrbNH0yovLVEJ6d+P/P9W308umm4HQRvhrWkCc8HyzC/f
	3+ub/ZwZujC56VjR2z5ltjBZhKR2efX6gRbxfN3QNDUqe/FcAYO4UAshGrlMoRezlhFGWzOAJIsbQ
	gg31UWs9UriqO4APhe/4NsljCpIsD8ASw580daRka29aCso9zTve2p/J+rMNiQqGlLTt0CMvpRWbL
	YsTsPjqaAln9ZwHs1hufn0L941IOfRSVPbudYJKTHLNNvD+AB+UlDaLRHNRTRt3wkzul1VnPhgwTO
	+VI561Jf7xFk4Hv5Yigw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hg4u8-0007nZ-Ih; Wed, 26 Jun 2019 10:11:52 +0000
Received: from userp2120.oracle.com ([156.151.31.85])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hg4u2-0007n9-Va
 for libertas-dev@lists.infradead.org; Wed, 26 Jun 2019 10:11:48 +0000
Received: from pps.filterd (userp2120.oracle.com [127.0.0.1])
 by userp2120.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x5QA8X51079437;
 Wed, 26 Jun 2019 10:11:39 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : mime-version : content-type; s=corp-2018-07-02;
 bh=0rjPnFf/3usKiUcf+Z1GXvs1dO9my6qw/hTowI4egCU=;
 b=Cp54Xyno+NH+L2Nhd2qmKhk3hX5L1vYWl2kM53ciZYxx/9JXp88t7U5Jy3P1cs3L/TpR
 efKPP3hcXLPrki5bRkol5IlEGbWv+jJAl/U1M565aRvUTVDlIpK4VT7KA4jcVOnwVp2k
 snMKFGrEso5I+gwqqtGV1I2NBRZYmklZgmfKlgNkNywBWSaNStwFKM0jXPJG+oaMrjCU
 KhFnqr+/1gOAlZMbZTaDlCzhRODoKhoeWWruEHWttk3hztjDheD2GfcqNpIYCdhOa9rU
 dZb0ezIgLT4bzvHdmL//2SIf1/jNoCGoK4Lb9i46XL3iULcHuQl/+VKFtJzxDzvEfjrU KQ== 
Received: from aserp3030.oracle.com (aserp3030.oracle.com [141.146.126.71])
 by userp2120.oracle.com with ESMTP id 2t9cyqhbf1-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 26 Jun 2019 10:11:39 +0000
Received: from pps.filterd (aserp3030.oracle.com [127.0.0.1])
 by aserp3030.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x5QA9WR3171338;
 Wed, 26 Jun 2019 10:09:39 GMT
Received: from userv0122.oracle.com (userv0122.oracle.com [156.151.31.75])
 by aserp3030.oracle.com with ESMTP id 2t9accm7vj-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 26 Jun 2019 10:09:38 +0000
Received: from abhmp0010.oracle.com (abhmp0010.oracle.com [141.146.116.16])
 by userv0122.oracle.com (8.14.4/8.14.4) with ESMTP id x5QA9XVK032710;
 Wed, 26 Jun 2019 10:09:33 GMT
Received: from mwanda (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Wed, 26 Jun 2019 03:09:33 -0700
Date: Wed, 26 Jun 2019 13:09:26 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Kalle Valo <kvalo@codeaurora.org>, Philip Rakity <prakity@yahoo.com>
Subject: [PATCH] libertas: Fix a double free in if_spi_c2h_data()
Message-ID: <20190626100926.GD3242@mwanda>
MIME-Version: 1.0
Content-Disposition: inline
X-Mailer: git-send-email haha only kidding
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9299
 signatures=668687
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=2
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1810050000 definitions=main-1906260122
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9299
 signatures=668687
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=2 phishscore=0 bulkscore=0 spamscore=0 clxscore=1011
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1810050000
 definitions=main-1906260122
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190626_031147_156135_1D201C25 
X-CRM114-Status: GOOD (  16.67  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [156.151.31.85 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Lubomir Rintel <lkundrak@v3.sk>, kernel-janitors@vger.kernel.org,
 linux-wireless@vger.kernel.org, Allison Randal <allison@lohutok.net>,
 libertas-dev@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "libertas-dev" <libertas-dev-bounces@lists.infradead.org>
Errors-To: libertas-dev-bounces+lists+libertas-dev=lfdr.de@lists.infradead.org

The lbs_process_rxed_packet() frees the skb.  It didn't originally, but
we fixed it in commit f54930f36311 ("libertas: don't leak skb on receive
error").

Signed-off-by: Dan Carpenter <dan.carpenter@oracle.com>
---
 drivers/net/wireless/marvell/libertas/if_spi.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/wireless/marvell/libertas/if_spi.c b/drivers/net/wireless/marvell/libertas/if_spi.c
index 27067e79e83f..e38f02d1f2e4 100644
--- a/drivers/net/wireless/marvell/libertas/if_spi.c
+++ b/drivers/net/wireless/marvell/libertas/if_spi.c
@@ -772,7 +772,7 @@ static int if_spi_c2h_data(struct if_spi_card *card)
 	/* pass the SKB to libertas */
 	err = lbs_process_rxed_packet(card->priv, skb);
 	if (err)
-		goto free_skb;
+		goto out;  /* lbs_process_rxed_packet() frees skb */
 
 	/* success */
 	goto out;
-- 
2.20.1


_______________________________________________
libertas-dev mailing list
libertas-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/libertas-dev
