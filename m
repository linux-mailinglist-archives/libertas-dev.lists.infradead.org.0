Return-Path: <libertas-dev-bounces+lists+libertas-dev=lfdr.de@lists.infradead.org>
X-Original-To: lists+libertas-dev@lfdr.de
Delivered-To: lists+libertas-dev@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 07B6172DFE
	for <lists+libertas-dev@lfdr.de>; Wed, 24 Jul 2019 13:44:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:To:References:
	In-Reply-To:From:Subject:MIME-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xX1kkWEnOhnJI+anHmiqC9T9WU3JksTiyHwwQscTQOs=; b=NDGLaFwNdc8tO4
	+2QIUiA1TvFb/Ap4KiR90sBSYssLrYFnuKNQsh0JiM7oJUqL2UbZoKYNvBLSnRqNpgRge9ZxPi61l
	EcYgF8ekqe3R0pKIaXNaSE0jgB4pfpI+XNgrr8NmXO569Cdgpgadm16Opk3zIxPmZl+5s7t9tEy1O
	bvWi1f6E7r2za+Xwi9S9dsz4sceg6ZldDr49J/+Mc7mT4unbhpxLms5y9GAJjF9ThL+8iErnGAkkJ
	T3QFOkwdGuC0WG/ghn7ScqjrHoD1K2Xgs3n3lXiLvKQy9t/BLrwqEzp+sFmDHkHmy7CPEvhvWDmXT
	y1KIE28xLLwJ8G7BCpHA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqFhV-0006wo-ON; Wed, 24 Jul 2019 11:44:53 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqFhM-0006nj-Ac
 for libertas-dev@lists.infradead.org; Wed, 24 Jul 2019 11:44:46 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id B026160DAA; Wed, 24 Jul 2019 11:44:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1563968682;
 bh=WI7OaJbzQRsGararuSzJi7gI7JPxnUOnrorpDxfrFkE=;
 h=Subject:From:In-Reply-To:References:To:Cc:Date:From;
 b=fGG9AnknB8d7SpaO6ujh9FF14f7QvJfvPRcCNn75hClA1N4t0ec4IdvmK+KkyxToE
 8G1WiPuEN35KzrhNv+BgWNSDQBipvpI2WjEP4Y/3x3xKDkZtQQkGYMzTkGIMCUt2WQ
 RaqH7EcG93jpiKnvG5R3aLJiOPiOA9Z7PlkSfp0I=
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
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 55CA3619C9;
 Wed, 24 Jul 2019 11:44:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1563968682;
 bh=WI7OaJbzQRsGararuSzJi7gI7JPxnUOnrorpDxfrFkE=;
 h=Subject:From:In-Reply-To:References:To:Cc:From;
 b=XXAQBvA7djWIlFOdpwpGwntAYQCH9VxiZVn0L+L3A02K1o2DAPS8t51q8KMLiYrWg
 bcSSxBow0pa/rnqXLBiPdugF/kiBxKuttCAsa73Et45+WpMPCGGWm1wNIW1msoCLEn
 1xphQvUE4agBk28XEzTMPTImNy6rjlbgBUeCAOsU=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 55CA3619C9
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
MIME-Version: 1.0
Subject: Re: [PATCH] libertas: remove redundant assignment to variable ret
From: Kalle Valo <kvalo@codeaurora.org>
In-Reply-To: <20190705081734.15292-1-colin.king@canonical.com>
References: <20190705081734.15292-1-colin.king@canonical.com>
To: Colin King <colin.king@canonical.com>
User-Agent: pwcli/0.0.0-git (https://github.com/kvalo/pwcli/) Python/2.7.12
Message-Id: <20190724114442.B026160DAA@smtp.codeaurora.org>
Date: Wed, 24 Jul 2019 11:44:42 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190724_044444_484864_BC650C39 
X-CRM114-Status: UNSURE (   8.67  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.145.29.96 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 linux-kernel@vger.kernel.org, "David S . Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "libertas-dev" <libertas-dev-bounces@lists.infradead.org>
Errors-To: libertas-dev-bounces+lists+libertas-dev=lfdr.de@lists.infradead.org

Colin King <colin.king@canonical.com> wrote:

> From: Colin Ian King <colin.king@canonical.com>
> 
> The variable ret is being initialized with a value that is never
> read and it is being updated later with a new value. The
> initialization is redundant and can be removed.
> 
> Addresses-Coverity: ("Unused value")
> Signed-off-by: Colin Ian King <colin.king@canonical.com>

Patch applied to wireless-drivers-next.git, thanks.

4c8a46851019 libertas: remove redundant assignment to variable ret

-- 
https://patchwork.kernel.org/patch/11032181/

https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches


_______________________________________________
libertas-dev mailing list
libertas-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/libertas-dev
