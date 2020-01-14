Return-Path: <libertas-dev-bounces+lists+libertas-dev=lfdr.de@lists.infradead.org>
X-Original-To: lists+libertas-dev@lfdr.de
Delivered-To: lists+libertas-dev@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 95A3E13AB41
	for <lists+libertas-dev@lfdr.de>; Tue, 14 Jan 2020 14:44:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yO9/ezEhnerybB/OHfg1qOpabPnJcGKu8AFTh25mj68=; b=b7PENjesSUrlDb
	qYpsV15goLD0dbx7xdN0gkmCc0PFstngOmQ6j/mUEwhME8U7Z7DTsILUuKOVpy0l/JaBnrrihNzxP
	h4qk49p4z+iwI6RgtaDpgXAomCaGWDs6X9WHKNEk6PRboRlqVMp+qG1Snd0yYxfoy4Tn0qN1KTuCv
	LmxVgjgVD3PHi5+zcjP6584XF7Gj0bV76yEftPFf4UcP6m4ynPUD5Y5UVeS6t7M8MHwde/aDU3dk+
	t55migjCo49472+8bL5NNnLCnOSj4FM8D5aIbptIlc0R5pZC9XUX6XRdCD3vuQXY9aUWucE8CJVe0
	JVGAaO4rYKFx1H6hT1Rg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irMUA-0001kg-OG; Tue, 14 Jan 2020 13:43:58 +0000
Received: from mail25.static.mailgun.info ([104.130.122.25])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irMU4-0001jF-Tl
 for libertas-dev@lists.infradead.org; Tue, 14 Jan 2020 13:43:57 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1579009429; h=Content-Type: MIME-Version: Message-ID:
 In-Reply-To: Date: References: Subject: Cc: To: From: Sender;
 bh=grv067apNIcUdGejucgF9bWSVoDiljz0jVxYhGB3g5c=;
 b=ppQm2JAZUdE0ASeSqEMvTRcJ3+OBb4eTMPna06SeMTeRYDQ64SJIuHiDTZWqpZ3AneQoTv29
 Z3Kbgi5tctvrVX3xkefYWzL58RFQ9hKaA9JuW5+GFEr6G+C3XimjC7Oz6bKPE/GjtlnsjZ2J
 A7fzWNM0pdgMIGqouxauOlnLvLY=
X-Mailgun-Sending-Ip: 104.130.122.25
X-Mailgun-Sid: WyJhMDJjNSIsICJsaWJlcnRhcy1kZXZAbGlzdHMuaW5mcmFkZWFkLm9yZyIsICJiZTllNGEiXQ==
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5e1dc593.7f8180204ea0-smtp-out-n02;
 Tue, 14 Jan 2020 13:43:47 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id B6BE1C447A1; Tue, 14 Jan 2020 13:43:47 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED,SPF_NONE
 autolearn=unavailable autolearn_force=no version=3.4.0
Received: from x230.qca.qualcomm.com (85-76-19-103-nat.elisa-mobile.fi
 [85.76.19.103])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: kvalo)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id D95ECC43383;
 Tue, 14 Jan 2020 13:43:44 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org D95ECC43383
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
From: Kalle Valo <kvalo@codeaurora.org>
To: Nicolai Stange <nstange@suse.de>
Subject: Re: [PATCH 1/2] libertas: don't exit from lbs_ibss_join_existing()
 with RCU read lock held
References: <87woa04t2v.fsf@suse.de> <20200114103903.2336-1-nstange@suse.de>
 <20200114103903.2336-2-nstange@suse.de>
Date: Tue, 14 Jan 2020 15:43:42 +0200
In-Reply-To: <20200114103903.2336-2-nstange@suse.de> (Nicolai Stange's message
 of "Tue, 14 Jan 2020 11:39:02 +0100")
Message-ID: <87o8v6qhkh.fsf@codeaurora.org>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/24.5 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200114_054353_021821_6BD8BE99 
X-CRM114-Status: GOOD (  10.36  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
Cc: libertas-dev@lists.infradead.org, Takashi Iwai <tiwai@suse.de>,
 netdev@vger.kernel.org, linux-wireless@vger.kernel.org,
 linux-kernel@vger.kernel.org, Wen Huang <huangwenabc@gmail.com>,
 Miroslav Benes <mbenes@suse.cz>, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "libertas-dev" <libertas-dev-bounces@lists.infradead.org>
Errors-To: libertas-dev-bounces+lists+libertas-dev=lfdr.de@lists.infradead.org

Nicolai Stange <nstange@suse.de> writes:

> Commit e5e884b42639 ("libertas: Fix two buffer overflows at parsing bss
> descriptor") introduced a bounds check on the number of supplied rates to
> lbs_ibss_join_existing().
>
> Unfortunately, it introduced a return path from within a RCU read side
> critical section without a corresponding rcu_read_unlock(). Fix this.
>
> Fixes: e5e884b42639 ("libertas: Fix two buffer overflows at parsing bss
>                       descriptor")

This should be in one line, I'll fix it during commit.

-- 
https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches

_______________________________________________
libertas-dev mailing list
libertas-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/libertas-dev
