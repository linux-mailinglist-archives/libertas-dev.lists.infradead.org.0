Return-Path: <libertas-dev-bounces+lists+libertas-dev=lfdr.de@lists.infradead.org>
X-Original-To: lists+libertas-dev@lfdr.de
Delivered-To: lists+libertas-dev@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E149DB21DA
	for <lists+libertas-dev@lfdr.de>; Fri, 13 Sep 2019 16:24:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:To:References:
	In-Reply-To:From:Subject:MIME-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jqaqYFkNGilMrNf2ZARoPqSl3OA4ieBLcA7VdQOPhvU=; b=N6ART6BQXj6FZi
	goeb4gShkoviPkarluQdFikGhY6UgIEraLhTXEUrqAfmEe0ex1LuubpvyXSDvcvuterjgIYlG5Rnr
	wzXDs0ApaPiMPla+D3M4hPao/fRumDWqhGDYpBKWj6Qg1dY/ispN2a8WUFc64k6zYB2uvuymZeWkw
	fvnjZQYQwtQALddgjJ/QIololh1InAnKtcgLMvYXptCNOR6zCwQaSMpkB5MVuVwlPLveY3USsK6T/
	Q6EHn5J3mdSUI42Zl7pyXbgomRCPzKaGodGUJNYWbFheXSpaUngdEgzWBnTbyirHedv062nFpk6EI
	g5A3rG1Ey+gkBQicCuMg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i8mUi-0005Da-OC; Fri, 13 Sep 2019 14:24:16 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i8mUd-0005Cs-Ax
 for libertas-dev@lists.infradead.org; Fri, 13 Sep 2019 14:24:13 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id 27FB560790; Fri, 13 Sep 2019 14:24:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1568384649;
 bh=7Mu6zb2zVJC32hBRU8iS+CwGW1/scWJt1XF34sRcaXw=;
 h=Subject:From:In-Reply-To:References:To:Cc:Date:From;
 b=oyKoF2QU5hoERKBDnE7I00qDdnvGZb15VHvvJT29ijcHGwDMKBWNKoF2lj1xAnOsA
 Pd6YWg/3PoFgk1ndz4plYov75FVtm0+AcViCTpl++ywWY4hsN2XgFNbabjmLR+nVhA
 uVPuQweuK27UBo1zFwC3pqLDC6WQlvy/rGRXpjCA=
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 pdx-caf-mail.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.8 required=2.0 tests=ALL_TRUSTED,BAYES_00,
 DKIM_INVALID,DKIM_SIGNED,MISSING_DATE,MISSING_MID,SPF_NONE autolearn=no
 autolearn_force=no version=3.4.0
Received: from potku.adurom.net (88-114-240-156.elisa-laajakaista.fi
 [88.114.240.156])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 (Authenticated sender: kvalo@smtp.codeaurora.org)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 0C28A602F8;
 Fri, 13 Sep 2019 14:24:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1568384648;
 bh=7Mu6zb2zVJC32hBRU8iS+CwGW1/scWJt1XF34sRcaXw=;
 h=Subject:From:In-Reply-To:References:To:Cc:From;
 b=PDSf1WNZe2hp95ECdCcGsQcSVsHbscquivaeFSqDiUtmHiUd7MMZw1GXRQZl8PxTR
 K2BWq/eZOwwCUj1rLcN8UXMgNzM2Cuhby0Jrgp2Mfy9oBIug2duXMTyISPYaF8zEr/
 eVz6XKGYVNqXvKE1bDnmQjfMuLN3tqCNICdK6pDs=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 0C28A602F8
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
MIME-Version: 1.0
Subject: Re: [PATCH] libertas: use mesh_wdev->ssid instead of priv->mesh_ssid
From: Kalle Valo <kvalo@codeaurora.org>
In-Reply-To: <20190907151855.2637984-1-lkundrak@v3.sk>
References: <20190907151855.2637984-1-lkundrak@v3.sk>
To: Lubomir Rintel <lkundrak@v3.sk>
User-Agent: pwcli/0.0.0-git (https://github.com/kvalo/pwcli/) Python/2.7.12
Message-Id: <20190913142409.27FB560790@smtp.codeaurora.org>
Date: Fri, 13 Sep 2019 14:24:09 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190913_072411_451301_23160119 
X-CRM114-Status: UNSURE (   7.06  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.145.29.96 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

Lubomir Rintel <lkundrak@v3.sk> wrote:

> With the commit e86dc1ca4676 ("Libertas: cfg80211 support") we've lost
> the ability to actually set the Mesh SSID from userspace.
> NL80211_CMD_SET_INTERFACE with NL80211_ATTR_MESH_ID sets the mesh point
> interface's ssid field. Let's use that one for the Libertas Mesh
> operation
> 
> Signed-off-by: Lubomir Rintel <lkundrak@v3.sk>

Patch applied to wireless-drivers-next.git, thanks.

2199c9817670 libertas: use mesh_wdev->ssid instead of priv->mesh_ssid

-- 
https://patchwork.kernel.org/patch/11136509/

https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches


_______________________________________________
libertas-dev mailing list
libertas-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/libertas-dev
