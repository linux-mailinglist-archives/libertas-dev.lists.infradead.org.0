Return-Path: <libertas-dev-bounces+lists+libertas-dev=lfdr.de@lists.infradead.org>
X-Original-To: lists+libertas-dev@lfdr.de
Delivered-To: lists+libertas-dev@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A2E5A149B55
	for <lists+libertas-dev@lfdr.de>; Sun, 26 Jan 2020 16:15:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:To:References:
	In-Reply-To:From:Subject:MIME-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=f91Q8fcyTPoayR0MRNoSiwDxODGGhUrmCwB2r/+nDRA=; b=c77u/CZN50TKOh
	l19RlGjIf0mIRZffTJMfLTh2uanonFc+xIu2DjSHkt6k6CVcxdyg3OyU03bPq8WJAgpNP8lzbBSN8
	50A3iCHuAy9SPMxmQHPS9LWA/rpfeid2aBhSvIA77v0IMnV1WCP/5bxFYrtzIuxqg+uUYffwV5IEp
	keDvAkHMo4twsQtg4wKCplN8w5I+f3Kb5ZvKCehZ+6vEsX1nR6qBJDEFNqFhRTmyhLdCeO8qv/j94
	SMkK5oMRCuRI7f9aOuA+9C2A2SyXpWNPRVcLq4nLUI5HTL+zlQ10YkVYPSos6WpaCjf3UOvjDCNBJ
	rWh9LJL6kg4ehlitjU6g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ivjcn-0005FT-9x; Sun, 26 Jan 2020 15:14:57 +0000
Received: from mail25.static.mailgun.info ([104.130.122.25])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ivjcj-0005F5-Tp
 for libertas-dev@lists.infradead.org; Sun, 26 Jan 2020 15:14:55 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1580051693; h=Date: Message-Id: Cc: To: References:
 In-Reply-To: From: Subject: Content-Transfer-Encoding: MIME-Version:
 Content-Type: Sender; bh=Y+S8D8aDvc3709rvH/pShWk38I9cJw+rSMPM2E0L9S8=;
 b=e3YIMv8bh78banJfZQlJaZ4UsUAt0jKwWiK0GZun2Z3ilfR0HkUqAFKYXGTXxYEK7TlFhRRq
 O/9rN9rDWn7gMQU7mrClu9HC5J6vdx6HPEM9O4dxBDAStlgcKVe4TPo1PV/MQSlZrrN0hLP0
 cxbeUKPfXSvyAlvhrSTiXw6KY9Q=
X-Mailgun-Sending-Ip: 104.130.122.25
X-Mailgun-Sid: WyJhMDJjNSIsICJsaWJlcnRhcy1kZXZAbGlzdHMuaW5mcmFkZWFkLm9yZyIsICJiZTllNGEiXQ==
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5e2dacec.7f4b9ddd55a8-smtp-out-n02;
 Sun, 26 Jan 2020 15:14:52 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id CC354C4479F; Sun, 26 Jan 2020 15:14:52 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=0.5 required=2.0 tests=ALL_TRUSTED,MISSING_DATE,
 MISSING_MID,SPF_NONE autolearn=no autolearn_force=no version=3.4.0
Received: from potku.adurom.net (88-114-240-156.elisa-laajakaista.fi
 [88.114.240.156])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested) (Authenticated sender: kvalo)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 0BFB3C433CB;
 Sun, 26 Jan 2020 15:14:49 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 0BFB3C433CB
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
MIME-Version: 1.0
Subject: Re: [PATCH 1/2] libertas: don't exit from lbs_ibss_join_existing()
 with RCU read lock held
From: Kalle Valo <kvalo@codeaurora.org>
In-Reply-To: <20200114103903.2336-2-nstange@suse.de>
References: <20200114103903.2336-2-nstange@suse.de>
To: Nicolai Stange <nstange@suse.de>
User-Agent: pwcli/0.0.0-git (https://github.com/kvalo/pwcli/) Python/2.7.12
Message-Id: <20200126151452.CC354C4479F@smtp.codeaurora.org>
Date: Sun, 26 Jan 2020 15:14:52 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200126_071454_028129_77310124 
X-CRM114-Status: UNSURE (   8.36  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [104.130.122.25 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Nicolai Stange <nstange@suse.de>, libertas-dev@lists.infradead.org,
 Takashi Iwai <tiwai@suse.de>, netdev@vger.kernel.org,
 linux-wireless@vger.kernel.org, linux-kernel@vger.kernel.org,
 Wen Huang <huangwenabc@gmail.com>, Miroslav Benes <mbenes@suse.cz>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "libertas-dev" <libertas-dev-bounces@lists.infradead.org>
Errors-To: libertas-dev-bounces+lists+libertas-dev=lfdr.de@lists.infradead.org

Nicolai Stange <nstange@suse.de> wrote:

> Commit e5e884b42639 ("libertas: Fix two buffer overflows at parsing bss
> descriptor") introduced a bounds check on the number of supplied rates to
> lbs_ibss_join_existing().
> 
> Unfortunately, it introduced a return path from within a RCU read side
> critical section without a corresponding rcu_read_unlock(). Fix this.
> 
> Fixes: e5e884b42639 ("libertas: Fix two buffer overflows at parsing bss
>                       descriptor")
> Signed-off-by: Nicolai Stange <nstange@suse.de>

I'll queue these to v5.5, unless Linus releases the final today and then they
will go to v5.6.

-- 
https://patchwork.kernel.org/patch/11331869/

https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches

_______________________________________________
libertas-dev mailing list
libertas-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/libertas-dev
