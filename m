Return-Path: <libertas-dev-bounces+lists+libertas-dev=lfdr.de@lists.infradead.org>
X-Original-To: lists+libertas-dev@lfdr.de
Delivered-To: lists+libertas-dev@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C30D1E0BFD
	for <lists+libertas-dev@lfdr.de>; Mon, 25 May 2020 12:39:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6WMSG41tu/egvgsC6gKYDDilSrGsHugU6/XKTqfQP0Q=; b=A0R/dT6reT0LZj
	XB/z/NRpfU6PvRWnmadxb/o9T5oCw1mxYZ/d3la57HyhEwFaVgRnFVFsdZFPntLhvLIVkbWRdk6wF
	dc8OKlNx+e+9XkBqJx9n+QynfDpaywIfVku4VW1gaboXkzzRB+dSTLRjG5g1n3P5bydf4Djsur3he
	1j9nSlugKv8y3Nmrw5J0Do85KUfO81whysuBk7kH7kseBDnoUQYPF2uraiKnvGLO5lz1GSfW+ChzO
	8BsALO8f6qmPbRlCTj6o7wPUk59kqJIOdfa73g6l15g8jbujRUcYMMxqbIpQ4nvSIgpSLJhyp/yOK
	ohdNub1XgLAOGVSDpgkg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdAVm-0008Eh-2i; Mon, 25 May 2020 10:39:14 +0000
Received: from mail26.static.mailgun.info ([104.130.122.26])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdAVf-0007fz-Js
 for libertas-dev@lists.infradead.org; Mon, 25 May 2020 10:39:10 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1590403149; h=Content-Transfer-Encoding: Content-Type:
 MIME-Version: Message-ID: In-Reply-To: Date: References: Subject: Cc:
 To: From: Sender; bh=lFsr8nIACUM6UgmDa1xekMARHxnlRL7EhwzL3mtLwqY=;
 b=LgeTkxMUNed1tXquibscTOXBH2usir/MsMxwBrfo1dOhdFoVFFczCqjrpmA40TJH8daTRFCl
 q5/DHjIfpZXd9cmzizO3acWmd7UhSaq6rlX/2UbC9COL7kpUhPYfVCXXS38vMkkzcz18Kdtl
 GcEEwboGav0cMDOHUJLPIV4sTdY=
X-Mailgun-Sending-Ip: 104.130.122.26
X-Mailgun-Sid: WyJhMDJjNSIsICJsaWJlcnRhcy1kZXZAbGlzdHMuaW5mcmFkZWFkLm9yZyIsICJiZTllNGEiXQ==
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171]) by
 smtp-out-n03.prod.us-west-2.postgun.com with SMTP id
 5ecba03d9d4cf4d3ef43d76c (version=TLS1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256); Mon, 25 May 2020 10:38:53
 GMT
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id DB00EC433CB; Mon, 25 May 2020 10:38:52 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED,SPF_NONE
 autolearn=unavailable autolearn_force=no version=3.4.0
Received: from potku.adurom.net (88-114-240-156.elisa-laajakaista.fi
 [88.114.240.156])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: kvalo)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 27801C433C9;
 Mon, 25 May 2020 10:38:47 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 27801C433C9
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
From: Kalle Valo <kvalo@codeaurora.org>
To: Pali =?utf-8?Q?Roh=C3=A1r?= <pali@kernel.org>
Subject: Re: [PATCH 07/11] mmc: sdio: Move SDIO IDs from ath6kl driver to
 common include file
References: <20200522144412.19712-1-pali@kernel.org>
 <20200522144412.19712-8-pali@kernel.org>
Date: Mon, 25 May 2020 13:38:46 +0300
In-Reply-To: <20200522144412.19712-8-pali@kernel.org> ("Pali
 \=\?utf-8\?Q\?Roh\?\= \=\?utf-8\?Q\?\=C3\=A1r\=22's\?\= message
 of "Fri, 22 May 2020 16:44:08 +0200")
Message-ID: <87blmc9u4p.fsf@codeaurora.org>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/24.5 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200525_033909_589970_DC774369 
X-CRM114-Status: UNSURE (   9.86  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [104.130.122.26 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [104.130.122.26 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: brcm80211-dev-list.pdl@broadcom.com, Ulf Hansson <ulf.hansson@linaro.org>,
 libertas-dev@lists.infradead.org, Xinming Hu <huxinming820@gmail.com>,
 linux-wireless@vger.kernel.org, linux-mmc@vger.kernel.org,
 linux-kernel@vger.kernel.org, Amitkumar Karwar <amitkarwar@gmail.com>,
 Marek =?utf-8?Q?Beh=C3=BAn?= <marek.behun@nic.cz>,
 Ganapathi Bhat <ganapathi.bhat@nxp.com>, ath10k@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, brcm80211-dev-list@cypress.com,
 b43-dev@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "libertas-dev" <libertas-dev-bounces@lists.infradead.org>
Errors-To: libertas-dev-bounces+lists+libertas-dev=lfdr.de@lists.infradead.org

UGFsaSBSb2jDoXIgPHBhbGlAa2VybmVsLm9yZz4gd3JpdGVzOgoKPiBBbHNvIHJlcGxhY2UgZ2Vu
ZXJpYyBNQU5VRkFDVFVSRVIgbWFjcm9zIGJ5IHByb3BlciBTRElPIElEcyBtYWNyb3MuCj4KPiBD
aGVjayBmb3IgIkFSNjAwMyBvciBsYXRlciIgaXMgc2xpZ2h0bHkgbW9kaWZpZWQgdG8gdXNlIFNE
SU8gZGV2aWNlIElEcy4KPiBUaGlzIGFsbG93cyByZW1vdmFsIG9mIGFsbCBjdXN0b20gTUFOVUZB
Q1RVUkVSIG1hY3JvcyBmcm9tIGF0aDZrbC4KPgo+IFNpZ25lZC1vZmYtYnk6IFBhbGkgUm9ow6Fy
IDxwYWxpQGtlcm5lbC5vcmc+CgpBY2tlZC1ieTogS2FsbGUgVmFsbyA8a3ZhbG9AY29kZWF1cm9y
YS5vcmc+CgotLSAKaHR0cHM6Ly93aXJlbGVzcy53aWtpLmtlcm5lbC5vcmcvZW4vZGV2ZWxvcGVy
cy9kb2N1bWVudGF0aW9uL3N1Ym1pdHRpbmdwYXRjaGVzCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpsaWJlcnRhcy1kZXYgbWFpbGluZyBsaXN0CmxpYmVy
dGFzLWRldkBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21h
aWxtYW4vbGlzdGluZm8vbGliZXJ0YXMtZGV2Cg==
