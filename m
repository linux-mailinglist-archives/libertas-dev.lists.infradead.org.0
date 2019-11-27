Return-Path: <libertas-dev-bounces+lists+libertas-dev=lfdr.de@lists.infradead.org>
X-Original-To: lists+libertas-dev@lfdr.de
Delivered-To: lists+libertas-dev@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BABD110B597
	for <lists+libertas-dev@lfdr.de>; Wed, 27 Nov 2019 19:23:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ai4AuoNo24nvn/A69M1+CAUioppOjsaoD+hV9Lqlyt0=; b=IcG20PT9RoBueC
	x+VSA+pjEQP03NYCvcmgkTWu3XB0m2yAwznHwBfc/thupOJSfLTuP8T47DcFHzJpsxOWf/GRIlf8k
	Gzazeo4VZoFKsbWREXFGMc7f/MPioRsv1YnhCO434PHhs5EXp3zy9Dbh5y5OnhGFhANaLeU5W4Zmm
	giEU39tBvW3iX0sqwuqhcPt3y+rgalPLJAmQIwicJycr0f2YjGg07CqcrqlhBnYCMNQd/ZWu6l0PI
	OXAlLuBvIHzTDtaWYB+qMfnzQB4X7MM0HtFndAETI1m5Iv5vDHXnrh+9myX+scEjIv6IGlocBscAd
	Dw9lbDmKOsgAbuMgbNyA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ia1yb-0001dD-As; Wed, 27 Nov 2019 18:23:45 +0000
Received: from mail-oi1-x244.google.com ([2607:f8b0:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ia1yW-0001ci-Ut
 for libertas-dev@lists.infradead.org; Wed, 27 Nov 2019 18:23:42 +0000
Received: by mail-oi1-x244.google.com with SMTP id s71so20917146oih.11
 for <libertas-dev@lists.infradead.org>; Wed, 27 Nov 2019 10:23:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=No21v74ZDd0gu4iS4BF16mJtDpZ4NtcVzIGEBplrTU4=;
 b=lMlSx3bSH77SfuEYgSurI6NDVd3Tyutw1QAfeeJxQ3xsxGqdyDpGRLn+2Dh5VexG87
 iJeMb3pu9b6HIE0DdtluqX3rKn7oVZOMed/WDWBPv6OnPGyHKtEEzkmQ/j1o22MKoHE3
 mS+OmXCYQ0+/JhZcbjtApV8xkppGTtrGofIA/h8QQUE1lHbjgy5wvGqCo+Yv9ywzdI5Q
 8z/uWIRNLY5DyowbbI38ASzNw4AUb+Xy4wBrg2JIZ6m34cv8wfU2SJnHX3Z1JSSUsokm
 yD6Y4g0l6C7eFJRzdp3wCKXoGuVlXhf/KGH5zPThu9ibLBLPTl/zVrcvtgCEk9ncmENJ
 0Tmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :references:mime-version:content-disposition:in-reply-to:user-agent;
 bh=No21v74ZDd0gu4iS4BF16mJtDpZ4NtcVzIGEBplrTU4=;
 b=HoHT/5DywAj7d9djh6vHmAjXsG1VaOu5XehHqb7To39XKXvkhye/TiLNQW4bM0CYdn
 Qdpv0o+LJeX+gFtn4zM8LkCPDXx/MOrWlNOnaheREZTZPPIaM3MGye0RL8hW5CfzBr3i
 tXdWyejd7OCPGNr7TIq4XdXqAK/tvQNhKeQVWIEQWPxAwCLjBVHrOzsxq5aYlgPZaHvp
 0R7+3+7TIfQbn4IQu8LAV8B0twWIC+oBbQkyil03FoUkal7tRf+vB94XuSv10ts5D05n
 haK+KLryCEL8OOb4UP24L/Pih283F0fVkVst8YbtmPIMCI5PE1OZ+VasyywlG+xWdBD1
 zI5A==
X-Gm-Message-State: APjAAAW1l5SxOnJacPN/eo0OzSciWl72glR87X2cAFpODkgVqyvwFNN2
 pK6YhCWAscvmGQpF7xVZbFo=
X-Google-Smtp-Source: APXvYqzqIrNgM9Nnp7n4d1g4I747RsYk9yZsBEIqGdlpB0dE4OyqPXdEj3Dm0Kg45eI+JkkH74ulCg==
X-Received: by 2002:aca:5a08:: with SMTP id o8mr5101363oib.104.1574879018659; 
 Wed, 27 Nov 2019 10:23:38 -0800 (PST)
Received: from localhost ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
 by smtp.gmail.com with ESMTPSA id t61sm5129050otb.21.2019.11.27.10.23.36
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 27 Nov 2019 10:23:37 -0800 (PST)
Date: Wed, 27 Nov 2019 10:23:35 -0800
From: Guenter Roeck <linux@roeck-us.net>
To: Philip Li <philip.li@intel.com>
Subject: Re: [kbuild-all] Re: [PATCH] libertas: Fix two buffer overflows at
 parsing bss descriptor
Message-ID: <20191127182335.GA28398@roeck-us.net>
References: <20191122052917.11309-1-huangwenabc@gmail.com>
 <201911241536.lyRxx5Oc%lkp@intel.com>
 <0101016ea290854e-f5721fd1-1ca7-49ab-9c10-85277bc46c64-000000@us-west-2.amazonses.com>
 <20191125142952.GA4090@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191125142952.GA4090@intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191127_102341_019748_8B3A0227 
X-CRM114-Status: GOOD (  25.53  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (groeck7[at]gmail.com)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (groeck7[at]gmail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
 kbuild test robot <lkp@intel.com>, libertas-dev@lists.infradead.org,
 linux-wireless@vger.kernel.org, linux-distros@vs.openwall.org,
 huangwenabc@gmail.com, Kalle Valo <kvalo@codeaurora.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "libertas-dev" <libertas-dev-bounces@lists.infradead.org>
Errors-To: libertas-dev-bounces+lists+libertas-dev=lfdr.de@lists.infradead.org

On Mon, Nov 25, 2019 at 10:29:52PM +0800, Philip Li wrote:
> On Mon, Nov 25, 2019 at 12:36:50PM +0000, Kalle Valo wrote:
> > kbuild test robot <lkp@intel.com> writes:
> > 
> > > Thank you for the patch! Perhaps something to improve:
> > >
> > > [auto build test WARNING on wireless-drivers-next/master]
> > > [also build test WARNING on v5.4-rc8 next-20191122]
> > > [if your patch is applied to the wrong git tree, please drop us a note to help
> > > improve the system. BTW, we also suggest to use '--base' option to specify the
> > > base tree in git format-patch, please see https://stackoverflow.com/a/37406982]
> > >
> > > url:    https://github.com/0day-ci/linux/commits/huangwenabc-gmail-com/libertas-Fix-two-buffer-overflows-at-parsing-bss-descriptor/20191124-142236
> > > base:   https://git.kernel.org/pub/scm/linux/kernel/git/kvalo/wireless-drivers-next.git master
> > > config: sh-allmodconfig (attached as .config)
> > > compiler: sh4-linux-gcc (GCC) 7.4.0
> > > reproduce:
> > >         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
> > >         chmod +x ~/bin/make.cross
> > >         # save the attached .config to linux build tree
> > >         GCC_VERSION=7.4.0 make.cross ARCH=sh 
> > >
> > > If you fix the issue, kindly add following tag
> > > Reported-by: kbuild test robot <lkp@intel.com>
> > >
> > > All warnings (new ones prefixed by >>):
> > >
> > >    drivers/net/wireless/marvell/libertas/cfg.c: In function 'lbs_ibss_join_existing':
> > >>> drivers/net/wireless/marvell/libertas/cfg.c:1788:3: warning: ISO C90 forbids mixed declarations and code [-Wdeclaration-after-statement]
> > 
> > I was wondering why I didn't see this mail in patchwork:
> > 
> > https://patchwork.kernel.org/patch/11257187/
> > 
> > And then I noticed this:
> > 
> > X-Patchwork-Hint: ignore
> > 
> > kbuild team, why are you adding that header? It's really bad for a
> thanks for the feedback, early on we received another feedback to suggest
> for adding this, refer to https://gitlab.freedesktop.org/patchwork-fdo/patchwork-fdo/issues/21
> for detail. Since there's no further input regarding this usage, we keep
> that flag. If this is not suitable, we can investigate other way to fullfill
> both requirements.
> 

I second Kalle's comment; this is really bad.

Note that the above referenced link suggested to add
	X-Patchwork-Hint: comment
to e-mail headers. Instead, you added:
	X-Patchwork-Hint: ignore
which is substantially different. Also, the problem was with a _patch_
sent by the robot, not with direct feedback. On top of that, the
suggestion was really to add "X-Patchwork-Hint: comment" to _patches_
sent by the robot, not to everything. It should be fine to add
"X-Patchwork-Hint: ignore" to patches only as long as other feedback
is still provided and added to patchwork. That should meet all
requirements.

Thanks,
Guenter

> > maintainer like me who uses patchwork actively, it means that all these
> > important warnings are not visible in patchwork and can be easily missed
> > by the maintainers.
> > 
> > -- 
> > https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches
> > _______________________________________________
> > kbuild-all mailing list -- kbuild-all@lists.01.org
> > To unsubscribe send an email to kbuild-all-leave@lists.01.org

_______________________________________________
libertas-dev mailing list
libertas-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/libertas-dev
