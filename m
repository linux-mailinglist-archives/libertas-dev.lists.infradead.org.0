Return-Path: <libertas-dev-bounces+lists+libertas-dev=lfdr.de@lists.infradead.org>
X-Original-To: lists+libertas-dev@lfdr.de
Delivered-To: lists+libertas-dev@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C8DAC10C4A9
	for <lists+libertas-dev@lfdr.de>; Thu, 28 Nov 2019 09:01:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Message-ID:To:References:
	In-Reply-To:From:Subject:MIME-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0F6AS9TpMfRxE4U7bGdrL72FlodxdfJtGFLU3Ry8jJs=; b=UutrTE8PtksLky
	F5n3OM6T34db7bZxN6vbKuVTStxoJjxIQb9RCCiul4DZUR7z2RjAhKwTE8Ccve6v+aQqQRiRoUGsG
	EjyLxwCIidw5r07u6FJ0w6LCo2vQNuNaFU2L97/0FtnrmafLpcb3Y1rmALEvO7yS/0Lc1+mj71F55
	foM89ZndYwKn0kfl8687Vm/3pfqJw+g0xTwCX/bbS/fry2zuIvKYJUQ5Q+rB2yrxVp7cRVh2oZgJQ
	gWCFifX9aVj075uvyExalZvm/5HxOOskYwQs8vJGpbGYtzk6Gm6G5aRtWonUd2qJzq8B7QtvsLlqH
	uj04q7QCIwYTHlaB/Iug==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iaEjL-0002j1-6S; Thu, 28 Nov 2019 08:00:51 +0000
Received: from a27-186.smtp-out.us-west-2.amazonses.com ([54.240.27.186])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iaEjI-0002id-DC
 for libertas-dev@lists.infradead.org; Thu, 28 Nov 2019 08:00:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
 s=zsmsymrwgfyinv5wlfyidntwsjeeldzt; d=codeaurora.org; t=1574928046;
 h=Content-Type:MIME-Version:Content-Transfer-Encoding:Subject:From:In-Reply-To:References:To:Cc:Message-Id:Date;
 bh=R170+eucBgwGB7vYzNNsgn9IJoatW8gOmldds1sVyjg=;
 b=GGvyPRC10bH0DDqBdKc7tWrewr7z6j+c9mcTRwATZrnVEyFJNArRFdEHJME7oEfO
 ifxGoouuC70G/6r8asb6boWa++DJ1UbmXotcGku07H+nuEwDoTmy3p2a22RpFRbFvva
 vRcb4sQ1jP3/W1j2Hxb1gkIPV5O/tVHyJ/wX0DQ8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
 s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1574928046;
 h=Content-Type:MIME-Version:Content-Transfer-Encoding:Subject:From:In-Reply-To:References:To:Cc:Message-Id:Date:Feedback-ID;
 bh=R170+eucBgwGB7vYzNNsgn9IJoatW8gOmldds1sVyjg=;
 b=V1o0grLKOa4zHwb/RM8MfFixdCXTViwQKU1QemZC0yR84MrgUQWjgb+/pQqa3UNu
 kP7sOnVJCisPgbDxWjltIvxf0eWeEUKSrWsBwbXhBv+TeR0Q62FBRW1Ez9VyRPIZLBY
 KhzBE0bnT6TBJ3hE1+ByIH9LgZJ4kV2O9fqzcfD4=
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=0.5 required=2.0 tests=ALL_TRUSTED,MISSING_DATE,
 MISSING_MID,SPF_NONE autolearn=no autolearn_force=no version=3.4.0
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 9C5FEC43383
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
MIME-Version: 1.0
Subject: Re: [PATCH] libertas: Fix two buffer overflows at parsing bss
 descriptor
From: Kalle Valo <kvalo@codeaurora.org>
In-Reply-To: <20191122052917.11309-1-huangwenabc@gmail.com>
References: <20191122052917.11309-1-huangwenabc@gmail.com>
To: huangwenabc@gmail.com
User-Agent: pwcli/0.0.0-git (https://github.com/kvalo/pwcli/) Python/2.7.12
Message-ID: <0101016eb106d6ed-4c3f0d6a-2fe6-4276-81ae-e240130b8c57-000000@us-west-2.amazonses.com>
Date: Thu, 28 Nov 2019 08:00:45 +0000
X-SES-Outgoing: 2019.11.28-54.240.27.186
Feedback-ID: 1.us-west-2.CZuq2qbDmUIuT3qdvXlRHZZCpfZqZ4GtG9v3VKgRyF0=:AmazonSES
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191128_000048_631776_F59C201D 
X-CRM114-Status: UNSURE (   5.17  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [54.240.27.186 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-distros@vs.openwall.org, security@kernel.org,
 linux-wireless@vger.kernel.org, libertas-dev@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "libertas-dev" <libertas-dev-bounces@lists.infradead.org>
Errors-To: libertas-dev-bounces+lists+libertas-dev=lfdr.de@lists.infradead.org

huangwenabc@gmail.com wrote:

> From: Wen Huang <huangwenabc@gmail.com>
> 
> add_ie_rates() copys rates without checking the length 
> in bss descriptor from remote AP.when victim connects to 
> remote attacker, this may trigger buffer overflow.
> lbs_ibss_join_existing() copys rates without checking the length 
> in bss descriptor from remote IBSS node.when victim connects to 
> remote attacker, this may trigger buffer overflow.
> Fix them by putting the length check before performing copy.
> 
> This fix addresses CVE-2019-14896 and CVE-2019-14897.
> 
> Signed-off-by: Wen Huang <huangwenabc@gmail.com>

Please fix the warning reported by kbuild bot.

Patch set to Changes Requested.

-- 
https://patchwork.kernel.org/patch/11257187/

https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches


_______________________________________________
libertas-dev mailing list
libertas-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/libertas-dev
