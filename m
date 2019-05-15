Return-Path: <libertas-dev-bounces+lists+libertas-dev=lfdr.de@lists.infradead.org>
X-Original-To: lists+libertas-dev@lfdr.de
Delivered-To: lists+libertas-dev@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BAE51F44F
	for <lists+libertas-dev@lfdr.de>; Wed, 15 May 2019 14:26:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=8JkJmtSXvg/Dr87NsoE/c0YkzWHaTJV+v3uX760VYKs=; b=G4/U09980ABXpULe+e/DtTfos
	+EGtjt+5z6/W2g9ecE/yJGjzDkMGd/eo/ZpFUBM4vYBw6DhVLeeKMIpBn2R2Sxi6kEougYGyOs0d1
	YWo6QxCy3IIKnVzHQbRYHuM/XgDAILoGDkrisSe84x7ar6FfqXuIkTkgKyL1/tDSK+Fa2L28rbOia
	q47Q5NPwXhqNQHATjR0buMioHYJjuLAPM7/+1Qm8MsFGe6ANDf6baoKGQ3g/zxBN9knP3ONc8QuuX
	3WmfABXKvhGRdjCekiDpAQhjLl+vwfZvvt1INMZXZ4B0kZBOy5yFJwRL29ZyjPav+0rYudfyrCKvY
	DHbMmaVkw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQszG-0007JL-Av; Wed, 15 May 2019 12:26:22 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQszC-0007Ir-UZ
 for libertas-dev@lists.infradead.org; Wed, 15 May 2019 12:26:20 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id 0C611607CA; Wed, 15 May 2019 12:26:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1557923178;
 bh=9MqGVcO6uYUQ2aNqwWZf4c/ySF737WfbAu840JeYXQE=;
 h=Subject:To:Cc:References:From:Date:In-Reply-To:From;
 b=h+LrIjbWVYhw3DeNZQ3ebZLBfDoaCcSwaAkgVBr+WjcDi6/pdKVXYH/hDqwJr8wh6
 6/34sreNw60+j4YjrQzsE9t1rEej5Gg+Z/EeTPep8kEPD7hZVKUSFgGRo5flyhD6ZL
 qTzYz+ADMjkDjQVP/g+Nix1HohRAsnmdLFtBzADE=
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 pdx-caf-mail.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=2.0 tests=ALL_TRUSTED,BAYES_00,
 DKIM_INVALID,DKIM_SIGNED autolearn=no autolearn_force=no version=3.4.0
Received: from [10.204.79.15]
 (blr-c-bdr-fw-01_globalnat_allzones-outside.qualcomm.com [103.229.19.19])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 (Authenticated sender: mojha@smtp.codeaurora.org)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 37937607F4;
 Wed, 15 May 2019 12:26:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1557923177;
 bh=9MqGVcO6uYUQ2aNqwWZf4c/ySF737WfbAu840JeYXQE=;
 h=Subject:To:Cc:References:From:Date:In-Reply-To:From;
 b=SfllZBh9wAj1akKJtLKrDfIvh8upprGZG7nEkfm+T67WrefhLWfdeXAnwBwndDmHB
 T4HKEhkJHBfAyjJXBd7c26dXsLtxVf2j+KyqyyqYm9Ip4M2bV0hsPU/G0079fZl3ml
 GuX/HBVcME0N78YkxKntfJgJaUt3+cjMN3KAcLFI=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 37937607F4
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 spf=none smtp.mailfrom=mojha@codeaurora.org
Subject: Re: [PATCH] libertas/libertas_tf: fix spelling mistake "Donwloading"
 -> "Downloading"
To: Colin King <colin.king@canonical.com>, Kalle Valo <kvalo@codeaurora.org>, 
 "David S . Miller" <davem@davemloft.net>, libertas-dev@lists.infradead.org,
 linux-wireless@vger.kernel.org, netdev@vger.kernel.org
References: <20190514211406.6353-1-colin.king@canonical.com>
From: Mukesh Ojha <mojha@codeaurora.org>
Message-ID: <2661269b-7404-5534-05e1-b3b963dc2036@codeaurora.org>
Date: Wed, 15 May 2019 17:56:11 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190514211406.6353-1-colin.king@canonical.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190515_052619_027854_78742590 
X-CRM114-Status: GOOD (  14.85  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.145.29.96 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-BeenThere: libertas-dev@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <libertas-dev.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/libertas-dev>,
 <mailto:libertas-dev-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/libertas-dev/>
List-Post: <mailto:libertas-dev@lists.infradead.org>
List-Help: <mailto:libertas-dev-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/libertas-dev>,
 <mailto:libertas-dev-request@lists.infradead.org?subject=subscribe>
Cc: kernel-janitors@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "libertas-dev" <libertas-dev-bounces@lists.infradead.org>
Errors-To: libertas-dev-bounces+lists+libertas-dev=lfdr.de@lists.infradead.org


On 5/15/2019 2:44 AM, Colin King wrote:
> From: Colin Ian King <colin.king@canonical.com>
>
> There is are two spelling mistakes in lbtf_deb_usb2 messages, fix these.
>
> Signed-off-by: Colin Ian King <colin.king@canonical.com>
Reviewed-by: Mukesh Ojha <mojha@codeaurora.org>

Cheers,
-Mukesh

> ---
>   drivers/net/wireless/marvell/libertas/if_usb.c    | 2 +-
>   drivers/net/wireless/marvell/libertas_tf/if_usb.c | 2 +-
>   2 files changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/net/wireless/marvell/libertas/if_usb.c b/drivers/net/wireless/marvell/libertas/if_usb.c
> index 220dcdee8d2b..1d06fa564e28 100644
> --- a/drivers/net/wireless/marvell/libertas/if_usb.c
> +++ b/drivers/net/wireless/marvell/libertas/if_usb.c
> @@ -367,7 +367,7 @@ static int if_usb_send_fw_pkt(struct if_usb_card *cardp)
>   			     cardp->fwseqnum, cardp->totalbytes);
>   	} else if (fwdata->hdr.dnldcmd == cpu_to_le32(FW_HAS_LAST_BLOCK)) {
>   		lbs_deb_usb2(&cardp->udev->dev, "Host has finished FW downloading\n");
> -		lbs_deb_usb2(&cardp->udev->dev, "Donwloading FW JUMP BLOCK\n");
> +		lbs_deb_usb2(&cardp->udev->dev, "Downloading FW JUMP BLOCK\n");
>   
>   		cardp->fwfinalblk = 1;
>   	}
> diff --git a/drivers/net/wireless/marvell/libertas_tf/if_usb.c b/drivers/net/wireless/marvell/libertas_tf/if_usb.c
> index a4b9ede70705..38f77b1a02ca 100644
> --- a/drivers/net/wireless/marvell/libertas_tf/if_usb.c
> +++ b/drivers/net/wireless/marvell/libertas_tf/if_usb.c
> @@ -319,7 +319,7 @@ static int if_usb_send_fw_pkt(struct if_usb_card *cardp)
>   	} else if (fwdata->hdr.dnldcmd == cpu_to_le32(FW_HAS_LAST_BLOCK)) {
>   		lbtf_deb_usb2(&cardp->udev->dev,
>   			"Host has finished FW downloading\n");
> -		lbtf_deb_usb2(&cardp->udev->dev, "Donwloading FW JUMP BLOCK\n");
> +		lbtf_deb_usb2(&cardp->udev->dev, "Downloading FW JUMP BLOCK\n");
>   
>   		/* Host has finished FW downloading
>   		 * Donwloading FW JUMP BLOCK

_______________________________________________
libertas-dev mailing list
libertas-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/libertas-dev
