Return-Path: <libertas-dev-bounces+lists+libertas-dev=lfdr.de@lists.infradead.org>
X-Original-To: lists+libertas-dev@lfdr.de
Delivered-To: lists+libertas-dev@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D78B31A7EA0
	for <lists+libertas-dev@lfdr.de>; Tue, 14 Apr 2020 15:42:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Gqnd1OtsQav00OmqLJQ1tTxmNHYVbEOCXd3gClaX/Qk=; b=Dc1vELv4bBx3lp
	zUZLHlMkEIRG/IcVaJrKoto7gqT7rP4PlAmGVYidQCaJTHQfn9YhayFhTiWwcblctAvcUx9l3b6yy
	VluTYShUXbcZVpDbLBF+BtreeTX3LEXJsk2hNHPYknwblpdLschU5CDIStMw2/irZDQOPi2fH1UKy
	+/FehaGh/op8zZUYI8lSkbIXmflKeXBsOiqN04+CD9XTHwnRACZMeClpwWG2w5FlappgmjKxmUBXv
	jH/Nv7VotIoLGZ2MnCgaGzPrk0eNpvMgJp+sRZSiEFP721Zjc9IobyOLDFp9Z7Nkv+paetN9h8Mgx
	2TV2lO0ldfYn9e4E53pQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOLpI-0005L5-0c; Tue, 14 Apr 2020 13:42:08 +0000
Received: from mail.v3.sk ([167.172.186.51] helo=shell.v3.sk)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOLpD-0005KI-Ep
 for libertas-dev@lists.infradead.org; Tue, 14 Apr 2020 13:42:05 +0000
Received: from localhost (localhost.localdomain [127.0.0.1])
 by zimbra.v3.sk (Postfix) with ESMTP id 27FADE03A9;
 Tue, 14 Apr 2020 13:42:25 +0000 (UTC)
Received: from shell.v3.sk ([127.0.0.1])
 by localhost (zimbra.v3.sk [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id Kf1VxHPKjDDi; Tue, 14 Apr 2020 13:42:23 +0000 (UTC)
Received: from localhost (localhost.localdomain [127.0.0.1])
 by zimbra.v3.sk (Postfix) with ESMTP id C5C6BE043F;
 Tue, 14 Apr 2020 13:42:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at zimbra.v3.sk
Received: from shell.v3.sk ([127.0.0.1])
 by localhost (zimbra.v3.sk [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id nLR6T56V68z8; Tue, 14 Apr 2020 13:42:23 +0000 (UTC)
Received: from localhost (unknown [109.183.109.54])
 by zimbra.v3.sk (Postfix) with ESMTPSA id 54494E03A9;
 Tue, 14 Apr 2020 13:42:23 +0000 (UTC)
Date: Tue, 14 Apr 2020 15:41:55 +0200
From: Lubomir Rintel <lkundrak@v3.sk>
To: Jason Yan <yanaijie@huawei.com>
Subject: Re: [PATCH] libertas: make lbs_init_mesh() void
Message-ID: <20200414134155.GA166011@furthur.local>
References: <20200410090942.27239-1-yanaijie@huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200410090942.27239-1-yanaijie@huawei.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200414_064203_639263_D54B00A3 
X-CRM114-Status: GOOD (  11.44  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: libertas-dev@lists.infradead.org, netdev@vger.kernel.org,
 linux-wireless@vger.kernel.org, linux-kernel@vger.kernel.org,
 kvalo@codeaurora.org, colin.king@canonical.com, davem@davemloft.net,
 dan.carpenter@oracle.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "libertas-dev" <libertas-dev-bounces@lists.infradead.org>
Errors-To: libertas-dev-bounces+lists+libertas-dev=lfdr.de@lists.infradead.org

On Fri, Apr 10, 2020 at 05:09:42PM +0800, Jason Yan wrote:
> Fix the following coccicheck warning:
> 
> drivers/net/wireless/marvell/libertas/mesh.c:833:5-8: Unneeded variable:
> "ret". Return "0" on line 874
> 
> Reported-by: Hulk Robot <hulkci@huawei.com>
> Signed-off-by: Jason Yan <yanaijie@huawei.com>

Reviewed-by: Lubomir Rintel <lkundrak@v3.sk>

Thank you
Lubo

> ---
>  drivers/net/wireless/marvell/libertas/mesh.c | 6 +-----
>  drivers/net/wireless/marvell/libertas/mesh.h | 2 +-
>  2 files changed, 2 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/net/wireless/marvell/libertas/mesh.c b/drivers/net/wireless/marvell/libertas/mesh.c
> index 44c8a550da4c..f5b78257d551 100644
> --- a/drivers/net/wireless/marvell/libertas/mesh.c
> +++ b/drivers/net/wireless/marvell/libertas/mesh.c
> @@ -828,10 +828,8 @@ static void lbs_persist_config_remove(struct net_device *dev)
>   * Check mesh FW version and appropriately send the mesh start
>   * command
>   */
> -int lbs_init_mesh(struct lbs_private *priv)
> +void lbs_init_mesh(struct lbs_private *priv)
>  {
> -	int ret = 0;
> -
>  	/* Determine mesh_fw_ver from fwrelease and fwcapinfo */
>  	/* 5.0.16p0 9.0.0.p0 is known to NOT support any mesh */
>  	/* 5.110.22 have mesh command with 0xa3 command id */
> @@ -870,8 +868,6 @@ int lbs_init_mesh(struct lbs_private *priv)
>  
>  	/* Stop meshing until interface is brought up */
>  	lbs_mesh_config(priv, CMD_ACT_MESH_CONFIG_STOP, 1);
> -
> -	return ret;
>  }
>  
>  void lbs_start_mesh(struct lbs_private *priv)
> diff --git a/drivers/net/wireless/marvell/libertas/mesh.h b/drivers/net/wireless/marvell/libertas/mesh.h
> index 1561018f226f..d49717b20c09 100644
> --- a/drivers/net/wireless/marvell/libertas/mesh.h
> +++ b/drivers/net/wireless/marvell/libertas/mesh.h
> @@ -16,7 +16,7 @@
>  
>  struct net_device;
>  
> -int lbs_init_mesh(struct lbs_private *priv);
> +void lbs_init_mesh(struct lbs_private *priv);
>  void lbs_start_mesh(struct lbs_private *priv);
>  int lbs_deinit_mesh(struct lbs_private *priv);
>  
> -- 
> 2.17.2
> 

_______________________________________________
libertas-dev mailing list
libertas-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/libertas-dev
