Return-Path: <libertas-dev-bounces+lists+libertas-dev=lfdr.de@lists.infradead.org>
X-Original-To: lists+libertas-dev@lfdr.de
Delivered-To: lists+libertas-dev@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B121F108E11
	for <lists+libertas-dev@lfdr.de>; Mon, 25 Nov 2019 13:37:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=p+PESu5/27xnRgh/7f9abBIzh0VfhuCZCkPciKRIYRY=; b=TBe0LzOdqWswMj
	UButtxboZ03UhFM0RoeSQyFrnNit+jIppqjoqYkndNh9tCjOCzxjAIItLySUMtsyhzToXWPBXaqFv
	XMZSKyh1ZwM216T4qXDlD562DRR9yaLNKzO818zuyX51kXHuWHNneeiUaxD4fUvQWDztZCeVlmFSS
	tZf9X9/5jyTOk9CNpny6u8RAv5Fgt976YRBr36EUrss8phghIbQQpgy0KrkUSNvgORJhmUEcd2T+T
	/xfWz6tbw8hmqusxlvmthT10GGwS2N4J3+7PNaFyk5icH6i2agISeBkRzVINMI5Cx+Da0DIv8iVao
	gU55fMjEVgiTP3zpFzXQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZDbt-00065y-GM; Mon, 25 Nov 2019 12:36:57 +0000
Received: from a27-185.smtp-out.us-west-2.amazonses.com ([54.240.27.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZDbo-000659-KT
 for libertas-dev@lists.infradead.org; Mon, 25 Nov 2019 12:36:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
 s=zsmsymrwgfyinv5wlfyidntwsjeeldzt; d=codeaurora.org; t=1574685410;
 h=From:To:Cc:Subject:References:Date:In-Reply-To:Message-ID:MIME-Version:Content-Type;
 bh=281uii2cHKHQ5RIaD5ZKrHTRFYPuwnG4BLOWdy+fJ0E=;
 b=U/A57guxGFzhjgjLhKC0ug0vmEKWl+hYNXvW/tVlulytpSbFaeq1VMewRBZtiVMA
 RCfJibSSFRL1V5IoUOKotSdRWPUnMRkkjVZzQ5x6iBeIk7FKCEcLPrKmB4lB0E28E7u
 gbf4UY3HhTkbKiCsFOWexZVEPyk7neXOoh6ph6mU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
 s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1574685410;
 h=From:To:Cc:Subject:References:Date:In-Reply-To:Message-ID:MIME-Version:Content-Type:Feedback-ID;
 bh=281uii2cHKHQ5RIaD5ZKrHTRFYPuwnG4BLOWdy+fJ0E=;
 b=IcX8kIAaNhZ44Jl9MpM8jzQDVtZXshvQITpNCdfSzep6phaXOInp48Q2I++Ue2xZ
 ry31aU+XfDDL3iXpOYFShstAiFduH2akceszzxUmTk8Wn8ktcK0hmix4wGd+gtadyOY
 XqCkCwDrAUQL4ylE4F2P9FZUKfEzCWfbaMz008I0=
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED,SPF_NONE,
 URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.0
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 2E032C447BB
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
From: Kalle Valo <kvalo@codeaurora.org>
To: kbuild test robot <lkp@intel.com>
Subject: Re: [PATCH] libertas: Fix two buffer overflows at parsing bss
 descriptor
References: <20191122052917.11309-1-huangwenabc@gmail.com>
 <201911241536.lyRxx5Oc%lkp@intel.com>
Date: Mon, 25 Nov 2019 12:36:50 +0000
In-Reply-To: <201911241536.lyRxx5Oc%lkp@intel.com> (kbuild test robot's
 message of "Sun, 24 Nov 2019 15:52:03 +0800")
Message-ID: <0101016ea29085be-48994d92-c9bd-445f-b71b-478dfbd098b8-000000@us-west-2.amazonses.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.1 (gnu/linux)
MIME-Version: 1.0
X-SES-Outgoing: 2019.11.25-54.240.27.185
Feedback-ID: 1.us-west-2.CZuq2qbDmUIuT3qdvXlRHZZCpfZqZ4GtG9v3VKgRyF0=:AmazonSES
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191125_043652_697125_4F708DA1 
X-CRM114-Status: GOOD (  13.98  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [54.240.27.185 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: security@kernel.org, kbuild-all@lists.01.org,
 libertas-dev@lists.infradead.org, linux-wireless@vger.kernel.org,
 linux-distros@vs.openwall.org, huangwenabc@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "libertas-dev" <libertas-dev-bounces@lists.infradead.org>
Errors-To: libertas-dev-bounces+lists+libertas-dev=lfdr.de@lists.infradead.org

kbuild test robot <lkp@intel.com> writes:

> Thank you for the patch! Perhaps something to improve:
>
> [auto build test WARNING on wireless-drivers-next/master]
> [also build test WARNING on v5.4-rc8 next-20191122]
> [if your patch is applied to the wrong git tree, please drop us a note to help
> improve the system. BTW, we also suggest to use '--base' option to specify the
> base tree in git format-patch, please see https://stackoverflow.com/a/37406982]
>
> url:    https://github.com/0day-ci/linux/commits/huangwenabc-gmail-com/libertas-Fix-two-buffer-overflows-at-parsing-bss-descriptor/20191124-142236
> base:   https://git.kernel.org/pub/scm/linux/kernel/git/kvalo/wireless-drivers-next.git master
> config: sh-allmodconfig (attached as .config)
> compiler: sh4-linux-gcc (GCC) 7.4.0
> reproduce:
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # save the attached .config to linux build tree
>         GCC_VERSION=7.4.0 make.cross ARCH=sh 
>
> If you fix the issue, kindly add following tag
> Reported-by: kbuild test robot <lkp@intel.com>
>
> All warnings (new ones prefixed by >>):
>
>    drivers/net/wireless/marvell/libertas/cfg.c: In function 'lbs_ibss_join_existing':
>>> drivers/net/wireless/marvell/libertas/cfg.c:1788:3: warning: ISO C90 forbids mixed declarations and code [-Wdeclaration-after-statement]

I was wondering why I didn't see this mail in patchwork:

https://patchwork.kernel.org/patch/11257187/

And then I noticed this:

X-Patchwork-Hint: ignore

kbuild team, why are you adding that header? It's really bad for a
maintainer like me who uses patchwork actively, it means that all these
important warnings are not visible in patchwork and can be easily missed
by the maintainers.

-- 
https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches

_______________________________________________
libertas-dev mailing list
libertas-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/libertas-dev
