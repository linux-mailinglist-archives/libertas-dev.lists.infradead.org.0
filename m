Return-Path: <libertas-dev-bounces+lists+libertas-dev=lfdr.de@lists.infradead.org>
X-Original-To: lists+libertas-dev@lfdr.de
Delivered-To: lists+libertas-dev@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 799792C6D2
	for <lists+libertas-dev@lfdr.de>; Tue, 28 May 2019 14:43:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:To:References:
	In-Reply-To:From:Subject:MIME-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VIas+RwwCaIHo7TutZa8g7D2VeBrmHCASYu4NdK048s=; b=ll10F2W+M8kIwj
	xW6ZEo3C43s3jxWQRv5U2c0RVRjruFeP8wB4aD7DOx4FbQcmmT09U7Y14VTJSZa+2aBdE3g0pzwDL
	UGUCmuVb281wktuySemXnrYsnQZs1SC1osSQX1j+LMA2c94+JF2EW/4TCO/nv+UiibFDWfmqYCB00
	bJkMW9jtWxDt7v+34xVTpq9BUlfZtA4jGCMP2ODZO/hMOFI8A5KM92uPGjLJ85UzWg4GXWQP/KCHT
	LQ5imtFUAF/wep4HlZbd7cqF9sZvj2wU7UrMG6QtiTFwcDMqEKyksnJTLiOIjtZDPhXqHZFemETey
	7mPo2TFZPb4A5TD7m4eg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVbRh-00087A-FY; Tue, 28 May 2019 12:43:13 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVbRc-00086R-Rs
 for libertas-dev@lists.infradead.org; Tue, 28 May 2019 12:43:10 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id 209856086B; Tue, 28 May 2019 12:43:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1559047388;
 bh=lCVRucRy9Sh6Z/3jPpo/oYImhufsBY/lliFa5yolGa4=;
 h=Subject:From:In-Reply-To:References:To:Cc:Date:From;
 b=o25HtyBqfNi2i01JLZ5hxBYQjJ7vyTAKInSln/u1L+DO0giyKEgKn/FpCsMoR2jaO
 AcvOYi0p0bedIgz6LLgIUvsX28CApYTkpMxbugUvZdDxiM4Fmt9vjj/n0HdA5Qlc6u
 nqdxJiet48XhlVRYxzH9dHenkxiu4z5fEtpjs8qo=
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
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 7736B6070D;
 Tue, 28 May 2019 12:43:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1559047387;
 bh=lCVRucRy9Sh6Z/3jPpo/oYImhufsBY/lliFa5yolGa4=;
 h=Subject:From:In-Reply-To:References:To:Cc:From;
 b=awL5ZifMTWVpkswr4/nnP/KgwlWZaQqhJMqj+EwH2ZKy9jFreXTNSPTrqSsNTDnoy
 ZeXeLFO95+9oBDBHIbTvrC+1Ka7a8mldwzNljH7gnV0ejZmnshlkoX9O2SuEqArqDp
 /MaJbIZ3YTzR3Fx6TNH+hG/GOmGNsMH6/rMh2oqc=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 7736B6070D
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
MIME-Version: 1.0
Subject: Re: [PATCH] libertas: fix spelling mistake "Donwloading" ->
 "Downloading"
From: Kalle Valo <kvalo@codeaurora.org>
In-Reply-To: <20190514211406.6353-1-colin.king@canonical.com>
References: <20190514211406.6353-1-colin.king@canonical.com>
To: Colin King <colin.king@canonical.com>
User-Agent: pwcli/0.0.0-git (https://github.com/kvalo/pwcli/) Python/2.7.12
Message-Id: <20190528124308.209856086B@smtp.codeaurora.org>
Date: Tue, 28 May 2019 12:43:08 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190528_054308_924182_0FC78C43 
X-CRM114-Status: UNSURE (   6.95  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.145.29.96 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-BeenThere: libertas-dev@lists.infradead.org
X-Mailman-Version: 2.1.21
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
> There is are two spelling mistakes in lbtf_deb_usb2 messages, fix these.
> 
> Signed-off-by: Colin Ian King <colin.king@canonical.com>
> Reviewed-by: Mukesh Ojha <mojha@codeaurora.org>

Patch applied to wireless-drivers-next.git, thanks.

aeffda6b10f8 libertas: fix spelling mistake "Donwloading" -> "Downloading"

-- 
https://patchwork.kernel.org/patch/10943765/

https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches


_______________________________________________
libertas-dev mailing list
libertas-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/libertas-dev
