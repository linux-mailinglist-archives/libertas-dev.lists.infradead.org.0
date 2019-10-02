Return-Path: <libertas-dev-bounces+lists+libertas-dev=lfdr.de@lists.infradead.org>
X-Original-To: lists+libertas-dev@lfdr.de
Delivered-To: lists+libertas-dev@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E20C2C8975
	for <lists+libertas-dev@lfdr.de>; Wed,  2 Oct 2019 15:18:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7z6vo/an+1ULArRjHRKAMQNmuLRkmCSKTu9Yrrr0YzU=; b=CzjQp6fHo4RC8s
	IqIiPn2YATsOnMnKEHY1he6UDg8KXetOs3YBIaJkp784HRXa+QxJt5EwLXhzGe4h3+sotRLkNkeJk
	22MAswwD8+JzmAeyo7jNo99mKh4dWWGiSpiOqJDzL+z7offsYuN85JIXpkVonA51xKpt2wuYqO+OX
	efC1uOGwQuSe6hsZoPhP9/KUru2xcREJ8MLh4iBWp1adQEbsCfXLOy2+1UnJ9HL3f52zmKb1DDtE3
	4Ghq/vK6/p/FgZqDFbg6aNxItrDt1y5VG/76TqCpCR/wuXLFvJiWhvRmCKOtQJp5mpA77q4TkFhBH
	+NpglhYo64/huWBWM2WA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFeW7-0003aE-C6; Wed, 02 Oct 2019 13:18:07 +0000
Received: from userp2120.oracle.com ([156.151.31.85])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFeW4-0003Zq-Gv
 for libertas-dev@lists.infradead.org; Wed, 02 Oct 2019 13:18:06 +0000
Received: from pps.filterd (userp2120.oracle.com [127.0.0.1])
 by userp2120.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x92DEIDE023643;
 Wed, 2 Oct 2019 13:17:47 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2019-08-05;
 bh=kXMcu5VQ15D9xKnPxBh3+Ftt1CqLJTYpiEFrjq4TfAg=;
 b=oXPd2+g7d2yTwj+5qSOr+7FRpGcabuyFeGEeo2TA05LUJIHKm1JRRDqEB5FtshMTcpFa
 1c1OSWe2ssUMcoExnFOnbQDKLWj+LuqnMrEiIf+omI+z693lrOTngxgec+1+GeKNnagq
 V4R205JA2fpUTMxyG4VK04yN1a+FGkxX+hXUIw/HFyVVaosgi/jT893FdKdLoMMSKlWb
 Aky/+5/KdbHU/SIzqqxRaLV1k/Fl0mUz0Sb7/+CS+8EkRuKf74l37X6bOxiKzaM1Baka
 GiOz1kXcQr+5tq4m7Bd0DNeReTgxfPvf5HrFOaGx9Rw2mYGQ7DGcHI5Ku3kjPyvWlZgD ww== 
Received: from aserp3030.oracle.com (aserp3030.oracle.com [141.146.126.71])
 by userp2120.oracle.com with ESMTP id 2va05rvs48-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 02 Oct 2019 13:17:47 +0000
Received: from pps.filterd (aserp3030.oracle.com [127.0.0.1])
 by aserp3030.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x92DEAjg161263;
 Wed, 2 Oct 2019 13:17:46 GMT
Received: from userv0121.oracle.com (userv0121.oracle.com [156.151.31.72])
 by aserp3030.oracle.com with ESMTP id 2vbsm3ugxg-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 02 Oct 2019 13:17:46 +0000
Received: from abhmp0007.oracle.com (abhmp0007.oracle.com [141.146.116.13])
 by userv0121.oracle.com (8.14.4/8.13.8) with ESMTP id x92DHhbE013341;
 Wed, 2 Oct 2019 13:17:43 GMT
Received: from kadam (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Wed, 02 Oct 2019 06:17:43 -0700
Date: Wed, 2 Oct 2019 16:17:35 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Colin King <colin.king@canonical.com>, Lubomir Rintel <lkundrak@v3.sk>
Subject: Re: [PATCH] libertas: remove redundant assignment to variable ret
Message-ID: <20191002131734.GN22609@kadam>
References: <20191002101517.10836-1-colin.king@canonical.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191002101517.10836-1-colin.king@canonical.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9397
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1908290000 definitions=main-1910020127
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9397
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1011
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1908290000
 definitions=main-1910020127
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191002_061804_694071_A0E531D9 
X-CRM114-Status: GOOD (  20.35  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [156.151.31.85 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [156.151.31.85 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-wireless@vger.kernel.org, libertas-dev@lists.infradead.org,
 netdev@vger.kernel.org, kernel-janitors@vger.kernel.org,
 linux-kernel@vger.kernel.org, "David S . Miller" <davem@davemloft.net>,
 Kalle Valo <kvalo@codeaurora.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "libertas-dev" <libertas-dev-bounces@lists.infradead.org>
Errors-To: libertas-dev-bounces+lists+libertas-dev=lfdr.de@lists.infradead.org

Added Lubomir Rintel to the CC list.

On Wed, Oct 02, 2019 at 11:15:17AM +0100, Colin King wrote:
> From: Colin Ian King <colin.king@canonical.com>
> 
> The variable ret is being assigned a value that is never read and is
> being re-assigned a little later on. The assignment is redundant and hence
> can be removed.
> 
> Addresses-Coverity: ("Unused value")
> Signed-off-by: Colin Ian King <colin.king@canonical.com>
> ---
>  drivers/net/wireless/marvell/libertas/mesh.c | 1 -
>  1 file changed, 1 deletion(-)
> 
> diff --git a/drivers/net/wireless/marvell/libertas/mesh.c b/drivers/net/wireless/marvell/libertas/mesh.c
> index 2747c957d18c..44c8a550da4c 100644
> --- a/drivers/net/wireless/marvell/libertas/mesh.c
> +++ b/drivers/net/wireless/marvell/libertas/mesh.c
> @@ -1003,7 +1003,6 @@ static int lbs_add_mesh(struct lbs_private *priv)
>  	if (priv->mesh_tlv) {
>  		sprintf(mesh_wdev->ssid, "mesh");
>  		mesh_wdev->mesh_id_up_len = 4;
> -		ret = 1;
>  	}

Removing this is fine.  "ret = 1" is a mistake.

This was copy and pasted in commit 2199c9817670 ("libertas: use
mesh_wdev->ssid instead of priv->mesh_ssid").  The return value was
never used so it's not clear what returning 1 vs 0 was supposed to mean.

lbs_init_mesh() should just be a void function.

Reviewed-by: Dan Carpenter <dan.carpenter@oracle.com>

regards,
dan carpenter

_______________________________________________
libertas-dev mailing list
libertas-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/libertas-dev
