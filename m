Return-Path: <libertas-dev-bounces+lists+libertas-dev=lfdr.de@lists.infradead.org>
X-Original-To: lists+libertas-dev@lfdr.de
Delivered-To: lists+libertas-dev@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6342514A64A
	for <lists+libertas-dev@lfdr.de>; Mon, 27 Jan 2020 15:37:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:To:References:
	In-Reply-To:From:Subject:MIME-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pPlaX22r/te0Q13RJjweQNXl6Bl5ZVy08WLp9vdnlxY=; b=mPMFZ3RBtB8ZbX
	XGAYV47SlDQJT5gSQIUIigxyYXQ6mldo+wHCPBRIEhR6izrDrafntMTvvTYidQQsAjnhFiwYAnkDo
	CDIx8go9zWPQD7vnapNzTAOYld6cpu68N1Iey70VQr+oprv4SNDPo797eepI4W3Woac6/SpMHQ39r
	nKmhA2gDczGdKdcJ6WXtlcL3VYGHT5LWe2kTvcz6YvfeE29yru4m98YkI7Bdz7DctJSNYK44mh9cb
	2bYaKhtwsJqM1rE4EH0aZUGl1Rg5/m9NfJ+eVk1PJP0JdAaEVjmFwKGOybliAdj8bs0Zzjvs27u1k
	CwQPnGKwCHppIHoJ0flg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iw5W1-00050N-Pz; Mon, 27 Jan 2020 14:37:25 +0000
Received: from mail26.static.mailgun.info ([104.130.122.26])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iw5Vx-000500-Jh
 for libertas-dev@lists.infradead.org; Mon, 27 Jan 2020 14:37:23 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1580135842; h=Date: Message-Id: Cc: To: References:
 In-Reply-To: From: Subject: Content-Transfer-Encoding: MIME-Version:
 Content-Type: Sender; bh=jcqUypoTfMISgMlEHGdNws8j1IKYxgwokJDYGYbDuQU=;
 b=ehEi/oNhKhhApzhKsMVWalV1zwQrkD4nNFgBj5U8hmp/Q/dkWv1QVocFfb+HgDQc5qvrtgMe
 NrWTqKj5NNHfaeHuo13hF2jGas6bupVA8AMSlU9dmPIm/OsKd7Q35XqWfBDp57jHcDNLT/QU
 aNvYXfDCcyyoEx7O3jTDfQ2F3s4=
X-Mailgun-Sending-Ip: 104.130.122.26
X-Mailgun-Sid: WyJhMDJjNSIsICJsaWJlcnRhcy1kZXZAbGlzdHMuaW5mcmFkZWFkLm9yZyIsICJiZTllNGEiXQ==
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5e2ef59f.7f2013c8ab20-smtp-out-n03;
 Mon, 27 Jan 2020 14:37:19 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id D061BC447A3; Mon, 27 Jan 2020 14:37:18 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=0.5 required=2.0 tests=ALL_TRUSTED,MISSING_DATE,
 MISSING_MID,SPF_NONE autolearn=no autolearn_force=no version=3.4.0
Received: from potku.adurom.net (88-114-240-156.elisa-laajakaista.fi
 [88.114.240.156])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested) (Authenticated sender: kvalo)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 0CE76C43383;
 Mon, 27 Jan 2020 14:37:15 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 0CE76C43383
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
Message-Id: <20200127143718.D061BC447A3@smtp.codeaurora.org>
Date: Mon, 27 Jan 2020 14:37:18 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200127_063722_474532_2E27FDD9 
X-CRM114-Status: UNSURE (   8.25  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [104.130.122.26 listed in list.dnswl.org]
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
> Fixes: e5e884b42639 ("libertas: Fix two buffer overflows at parsing bss descriptor")
> Signed-off-by: Nicolai Stange <nstange@suse.de>

2 patches applied to wireless-drivers.git, thanks.

c7bf1fb7ddca libertas: don't exit from lbs_ibss_join_existing() with RCU read lock held
1754c4f60aaf libertas: make lbs_ibss_join_existing() return error code on rates overflow

-- 
https://patchwork.kernel.org/patch/11331869/

https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches

_______________________________________________
libertas-dev mailing list
libertas-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/libertas-dev
