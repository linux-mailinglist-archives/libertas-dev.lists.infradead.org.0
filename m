Return-Path: <libertas-dev-bounces+lists+libertas-dev=lfdr.de@lists.infradead.org>
X-Original-To: lists+libertas-dev@lfdr.de
Delivered-To: lists+libertas-dev@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F7121E8484
	for <lists+libertas-dev@lfdr.de>; Fri, 29 May 2020 19:17:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:To:References:
	In-Reply-To:From:Subject:MIME-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VXwzq+wf2VfPjba7PL16Gd0o37eOH7c3EGHS+ylukwI=; b=QSZzq5xfY7A+na
	IcjzTSf/n2NZK3ZCIoN+LHWWzZBvU8yT/Yizj4JQy4DsUSs1n+KB0MwJt9xmmFVhpF84dWLwlERIT
	V42uWzgQzzS/Cvwt87hlg9m1mcQUikFvc/pwgRZ29iTpZ87Q6sfkfpghlUk1F0UNB/TABdG4Vd9ge
	+75gEQy4c87kehbHq/xSBjPzHNYvd5ape+bzthgLHAqkvc6481fp02VQRNvxoApKsduhDxi9GFEcq
	ycuVMM2LGaHeBIinb6mpKiuLOdwYUWQn+mvDqBfEohRH1RqdZ3U0Lt41L92aQUFeanDxyCjpotqD8
	L35XGidW2hnOSuvTW2tA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeicZ-0007vm-BR; Fri, 29 May 2020 17:16:39 +0000
Received: from m43-7.mailgun.net ([69.72.43.7])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeicT-0007vB-BM
 for libertas-dev@lists.infradead.org; Fri, 29 May 2020 17:16:36 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1590772594; h=Date: Message-Id: Cc: To: References:
 In-Reply-To: From: Subject: Content-Transfer-Encoding: MIME-Version:
 Content-Type: Sender; bh=BGui0kTfIvgcz8lNEynqPe2IR/LmNWw9UsE5DP5ka5Q=;
 b=w7lnVpFYOaA4wNFZIknRrDls5uHAl63L9sBMR428q9vWJGQquCR3b8I0FoY3rLEt2+TdwtAH
 yyE06YkSuUfJh2ktFxirVR9WGehLcMiv145GQcybENo5v9gOUfEA6VVNaRPUzL7FaPmtngv9
 0iCW7C2F4bEF5rwqVwPHqco3Wig=
X-Mailgun-Sending-Ip: 69.72.43.7
X-Mailgun-Sid: WyJhMDJjNSIsICJsaWJlcnRhcy1kZXZAbGlzdHMuaW5mcmFkZWFkLm9yZyIsICJiZTllNGEiXQ==
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171]) by
 smtp-out-n05.prod.us-east-1.postgun.com with SMTP id
 5ed14360ea0dfa490e7a6203 (version=TLS1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256); Fri, 29 May 2020 17:16:16
 GMT
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id 1BE12C433C6; Fri, 29 May 2020 17:16:16 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=0.5 required=2.0 tests=ALL_TRUSTED,MISSING_DATE,
 MISSING_MID,SPF_NONE autolearn=no autolearn_force=no version=3.4.0
Received: from potku.adurom.net (88-114-240-156.elisa-laajakaista.fi
 [88.114.240.156])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested) (Authenticated sender: kvalo)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id F2E91C433C9;
 Fri, 29 May 2020 17:16:13 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org F2E91C433C9
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
MIME-Version: 1.0
Subject: Re: [PATCH] libertas: Use shared constant for rfc1042 header
From: Kalle Valo <kvalo@codeaurora.org>
In-Reply-To: <20200523212628.31526-1-pterjan@google.com>
References: <20200523212628.31526-1-pterjan@google.com>
To: Pascal Terjan <pterjan@google.com>
User-Agent: pwcli/0.1.0-git (https://github.com/kvalo/pwcli/) Python/3.5.2
Message-Id: <20200529171616.1BE12C433C6@smtp.codeaurora.org>
Date: Fri, 29 May 2020 17:16:16 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200529_101635_035919_DBB3C2DA 
X-CRM114-Status: UNSURE (   6.67  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [69.72.43.7 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [69.72.43.7 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: libertas-dev@lists.infradead.org, netdev@vger.kernel.org,
 linux-wireless@vger.kernel.org, linux-kernel@vger.kernel.org,
 Jakub Kicinski <kuba@kernel.org>, Pascal Terjan <pterjan@google.com>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "libertas-dev" <libertas-dev-bounces@lists.infradead.org>
Errors-To: libertas-dev-bounces+lists+libertas-dev=lfdr.de@lists.infradead.org

Pascal Terjan <pterjan@google.com> wrote:

> This is one of the 9 drivers redefining rfc1042_header.
> 
> Signed-off-by: Pascal Terjan <pterjan@google.com>

Patch applied to wireless-drivers-next.git, thanks.

729ef6b614a1 libertas: Use shared constant for rfc1042 header

-- 
https://patchwork.kernel.org/patch/11567011/

https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches


_______________________________________________
libertas-dev mailing list
libertas-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/libertas-dev
