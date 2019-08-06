Return-Path: <libertas-dev-bounces+lists+libertas-dev=lfdr.de@lists.infradead.org>
X-Original-To: lists+libertas-dev@lfdr.de
Delivered-To: lists+libertas-dev@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AAD2383176
	for <lists+libertas-dev@lfdr.de>; Tue,  6 Aug 2019 14:36:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:To:References:
	In-Reply-To:From:Subject:MIME-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1DrPM6UKCwuSWG4ebwgZs29+jtPWtGLcrtfd3AjbI3I=; b=c5prmqnpNyOQaf
	QzzZ7Q3Ti9hIhB5jVx+/1CnQhu1RIwUbJrQuBKWZK+3PUchwGxdhLh1YJUlZVNotj8DFRekNTT144
	umgpgfvE8FXBWJ39HlhfF3tb49R/MEr1K67JIQ3PIzI1XAsvbqibiGhVqmBNvmX9Jdc5kxFLvEZCQ
	hm7h30eeggftHHZggy3lh1TV3e6MXBw/LESEg3/f7CVo4zRMjmd4h8u2a0CmLsTRpZ+bg6wkRuuYu
	JMU3xkGOapwVgEf+QxuYJlHCLNOp2jFp/lERTs3TBLZZ18FcDCKNNQQs1W3C0M00L9VPgqXOf13HC
	fB+u6ZAg7M34UdZjQfaw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1huyhT-0004EC-8m; Tue, 06 Aug 2019 12:36:23 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1huyhN-0004DW-Pr
 for libertas-dev@lists.infradead.org; Tue, 06 Aug 2019 12:36:19 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id 3BE5F60E5C; Tue,  6 Aug 2019 12:36:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1565094977;
 bh=bj8qWGpk0Sk8b4h8M0Ne5LXuOnmgHgbZr/8RgDNfuP8=;
 h=Subject:From:In-Reply-To:References:To:Cc:Date:From;
 b=hI3dtVvNg9XemazPwq5oe3z5hbwmZ0+3G5JLweanPwNzYtIFGjwHGzfoLuhD1s+Zc
 Ct6IZDqYcbAaAaruuOxORVTD2o16ghPwW4DhDTF9v++m14HzFIIDFBDzqu4X4XtH1U
 +PppGaoU/GjWw89UooPlTVctwam8njVYCQIQdqEY=
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
 by smtp.codeaurora.org (Postfix) with ESMTPSA id B25CB608BA;
 Tue,  6 Aug 2019 12:36:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1565094976;
 bh=bj8qWGpk0Sk8b4h8M0Ne5LXuOnmgHgbZr/8RgDNfuP8=;
 h=Subject:From:In-Reply-To:References:To:Cc:From;
 b=Dg5fiiKl+2LFh3I+pWjL092hV7TngoKzborRoN74EW4KRcpbs+nwMTI6RVw1whISe
 sPqJUsINYQRPWt+aFM0DPXndUOosh3IOcu4Fslc/8GUp6RGiElz9h/0mTAg33nr+qA
 eo5CGPUblez1eRYjIdhjMH6gQwrd835cZBPv1BHU=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org B25CB608BA
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
MIME-Version: 1.0
Subject: Re: [PATCH v3] libertas: Fix a double free in if_spi_c2h_data()
From: Kalle Valo <kvalo@codeaurora.org>
In-Reply-To: <9153261627a0f84b996e023f1349a2bc06dd03ee.camel@redhat.com>
References: <9153261627a0f84b996e023f1349a2bc06dd03ee.camel@redhat.com>
To: Dan Williams <dcbw@redhat.com>
User-Agent: pwcli/0.0.0-git (https://github.com/kvalo/pwcli/) Python/2.7.12
Message-Id: <20190806123617.3BE5F60E5C@smtp.codeaurora.org>
Date: Tue,  6 Aug 2019 12:36:17 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190806_053617_860566_FDFC08D1 
X-CRM114-Status: UNSURE (   7.14  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.145.29.96 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Philip Rakity <prakity@yahoo.com>, libertas-dev@lists.infradead.org,
 kernel-janitors@vger.kernel.org, linux-wireless@vger.kernel.org,
 Lubomir Rintel <lkundrak@v3.sk>, Allison Randal <allison@lohutok.net>,
 Dan Carpenter <dan.carpenter@oracle.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "libertas-dev" <libertas-dev-bounces@lists.infradead.org>
Errors-To: libertas-dev-bounces+lists+libertas-dev=lfdr.de@lists.infradead.org

Dan Williams <dcbw@redhat.com> wrote:

> The lbs_process_rxed_packet() frees the skb.  It didn't originally, but
> we fixed it in commit f54930f36311 ("libertas: don't leak skb on receive
> error").
> 
> Reported-by: Dan Carpenter <dan.carpenter@oracle.com>
> Signed-off-by: Dan Williams <dcbw@redhat.com>

Patch applied to wireless-drivers-next.git, thanks.

3915a252ce71 libertas: Fix a double free in if_spi_c2h_data()

-- 
https://patchwork.kernel.org/patch/11057049/

https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches


_______________________________________________
libertas-dev mailing list
libertas-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/libertas-dev
