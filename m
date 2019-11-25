Return-Path: <libertas-dev-bounces+lists+libertas-dev=lfdr.de@lists.infradead.org>
X-Original-To: lists+libertas-dev@lfdr.de
Delivered-To: lists+libertas-dev@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E7307108FC2
	for <lists+libertas-dev@lfdr.de>; Mon, 25 Nov 2019 15:23:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xlk4WpCzfmvq9r0pPw6R+Ua5SRTRTZGdl9MT6CO+te8=; b=HoG+LqrKjOEbUM
	Y+eCtkFO4NBH0WHMGzob4RIBeF6eXp3TI8rzLcAvyimC3fO8zJxPxgEU9i16V7t+sN43RC19ziyuj
	iT+oHVn/uOMYosI2q7TjSwdp/iDSBxe6QXIEA/wzDZqZjolx3D0MyOwg5q3LGPZxc0+6dqhFZlxIu
	bmtSK8wmuOJagpl9YTugbA7jE6VdkuE1CSlPML5NS++J8le/QKl/pfCTCHOnz797YrrdxKN9qLL+Z
	02NIriJm16tfaGNFVjj3bIIIL/xG9W2bM0kE51Ul9Bka0qNVpGShSGbl84pyO6+Eun6NyfCCNnP3C
	YfdUmK9JIOJQB0MZiNYg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZFGQ-00067P-JB; Mon, 25 Nov 2019 14:22:54 +0000
Received: from mga03.intel.com ([134.134.136.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZFGM-00066v-N1
 for libertas-dev@lists.infradead.org; Mon, 25 Nov 2019 14:22:52 +0000
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 25 Nov 2019 06:22:49 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,241,1571727600"; d="scan'208";a="211038573"
Received: from pl-dbox.sh.intel.com (HELO intel.com) ([10.239.13.128])
 by orsmga003.jf.intel.com with ESMTP; 25 Nov 2019 06:22:47 -0800
Date: Mon, 25 Nov 2019 22:29:52 +0800
From: Philip Li <philip.li@intel.com>
To: Kalle Valo <kvalo@codeaurora.org>
Subject: Re: [kbuild-all] Re: [PATCH] libertas: Fix two buffer overflows at
 parsing bss descriptor
Message-ID: <20191125142952.GA4090@intel.com>
References: <20191122052917.11309-1-huangwenabc@gmail.com>
 <201911241536.lyRxx5Oc%lkp@intel.com>
 <0101016ea290854e-f5721fd1-1ca7-49ab-9c10-85277bc46c64-000000@us-west-2.amazonses.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <0101016ea290854e-f5721fd1-1ca7-49ab-9c10-85277bc46c64-000000@us-west-2.amazonses.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191125_062250_791343_4BC04F56 
X-CRM114-Status: GOOD (  20.20  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [134.134.136.65 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
 huangwenabc@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "libertas-dev" <libertas-dev-bounces@lists.infradead.org>
Errors-To: libertas-dev-bounces+lists+libertas-dev=lfdr.de@lists.infradead.org

On Mon, Nov 25, 2019 at 12:36:50PM +0000, Kalle Valo wrote:
> kbuild test robot <lkp@intel.com> writes:
> 
> > Thank you for the patch! Perhaps something to improve:
> >
> > [auto build test WARNING on wireless-drivers-next/master]
> > [also build test WARNING on v5.4-rc8 next-20191122]
> > [if your patch is applied to the wrong git tree, please drop us a note to help
> > improve the system. BTW, we also suggest to use '--base' option to specify the
> > base tree in git format-patch, please see https://stackoverflow.com/a/37406982]
> >
> > url:    https://github.com/0day-ci/linux/commits/huangwenabc-gmail-com/libertas-Fix-two-buffer-overflows-at-parsing-bss-descriptor/20191124-142236
> > base:   https://git.kernel.org/pub/scm/linux/kernel/git/kvalo/wireless-drivers-next.git master
> > config: sh-allmodconfig (attached as .config)
> > compiler: sh4-linux-gcc (GCC) 7.4.0
> > reproduce:
> >         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
> >         chmod +x ~/bin/make.cross
> >         # save the attached .config to linux build tree
> >         GCC_VERSION=7.4.0 make.cross ARCH=sh 
> >
> > If you fix the issue, kindly add following tag
> > Reported-by: kbuild test robot <lkp@intel.com>
> >
> > All warnings (new ones prefixed by >>):
> >
> >    drivers/net/wireless/marvell/libertas/cfg.c: In function 'lbs_ibss_join_existing':
> >>> drivers/net/wireless/marvell/libertas/cfg.c:1788:3: warning: ISO C90 forbids mixed declarations and code [-Wdeclaration-after-statement]
> 
> I was wondering why I didn't see this mail in patchwork:
> 
> https://patchwork.kernel.org/patch/11257187/
> 
> And then I noticed this:
> 
> X-Patchwork-Hint: ignore
> 
> kbuild team, why are you adding that header? It's really bad for a
thanks for the feedback, early on we received another feedback to suggest
for adding this, refer to https://gitlab.freedesktop.org/patchwork-fdo/patchwork-fdo/issues/21
for detail. Since there's no further input regarding this usage, we keep
that flag. If this is not suitable, we can investigate other way to fullfill
both requirements.

> maintainer like me who uses patchwork actively, it means that all these
> important warnings are not visible in patchwork and can be easily missed
> by the maintainers.
> 
> -- 
> https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches
> _______________________________________________
> kbuild-all mailing list -- kbuild-all@lists.01.org
> To unsubscribe send an email to kbuild-all-leave@lists.01.org

_______________________________________________
libertas-dev mailing list
libertas-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/libertas-dev
