Return-Path: <libertas-dev-bounces+lists+libertas-dev=lfdr.de@lists.infradead.org>
X-Original-To: lists+libertas-dev@lfdr.de
Delivered-To: lists+libertas-dev@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C42C5C3015
	for <lists+libertas-dev@lfdr.de>; Tue,  1 Oct 2019 11:22:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:To:References:
	In-Reply-To:From:Subject:MIME-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=G5dk5EHjsY2z7m9SKof+STWvtUtA54gnYwYxbyIeZHE=; b=SZxSXbbaCELUFK
	O5Rbsoiso9N77KslJTBj4LK/d/SrurIIhjizkgTG621kNvwhae6MxyfqripbORCak/uE1OO7uofzV
	8wlCHXx17zcBbsRBJ4J6RzxUBRuimVCYR7YGGBslS/xxQ356zd9FwT8dhjIafuLW64OkbH3ezdsyV
	8BvG0VHMwllXUGvqgTKpNEVH/QVONWaNYAVAiZINlguJArvwhmw8EuyQU0MeJo3j1uZr8HKTzE58m
	MYyGzNI9Ra/yjuyoHstEUKpXpmLLXnNfqKGgW62BmusxwmlNJAqRzBZGCKQHIugEenUrz6bB6PEHB
	vbs0JzMTm5DzxTKkE/7w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFEMR-0005YJ-LB; Tue, 01 Oct 2019 09:22:23 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFEMN-0005WQ-Jp
 for libertas-dev@lists.infradead.org; Tue, 01 Oct 2019 09:22:21 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id A94FF61359; Tue,  1 Oct 2019 09:22:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1569921738;
 bh=VmuhhQTQwUQ/rwmArhiYtJQWVBWeBWRRgiKWa06tF+I=;
 h=Subject:From:In-Reply-To:References:To:Cc:Date:From;
 b=EzcxTANYAvoNSZ4lsQVyZ0YHlsyejnNwjnyBgpDg/eM32TMLSlQMTMASlom2wgkR5
 rp31/IV/LCkbjr3FaqB3NwqO4y6PZYrkOARrLbE3oHmXSgq0tVmWsfaPwiHMkRp3f9
 xTCC8hL4j3L177TwQXS4Yl1gc+d7mU875vVZ9j8o=
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
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 038A461950;
 Tue,  1 Oct 2019 09:22:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1569921733;
 bh=VmuhhQTQwUQ/rwmArhiYtJQWVBWeBWRRgiKWa06tF+I=;
 h=Subject:From:In-Reply-To:References:To:Cc:From;
 b=himDNRC4nbOwpPSsBw8yOo5x5YwEtnoMsQLkKhbXdsvA4Qj50ca8CeBIrTm1QE+Hn
 AN2X2GsXiVN+EvY2j1cg1Sr6Oc0OW1Nj7vdo036Eq4ejBMlQwbXVIeWm4dOpWXoChG
 hWuLN/p8B5bTXwbDfWWAw9sXn7/VIXRtMsRyQtQg=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 038A461950
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
MIME-Version: 1.0
Subject: Re: [PATCH] libertas: fix a potential NULL pointer dereference
From: Kalle Valo <kvalo@codeaurora.org>
In-Reply-To: <1568824500-4243-1-git-send-email-allen.pais@oracle.com>
References: <1568824500-4243-1-git-send-email-allen.pais@oracle.com>
To: Allen Pais <allen.pais@oracle.com>
User-Agent: pwcli/0.0.0-git (https://github.com/kvalo/pwcli/) Python/2.7.12
Message-Id: <20191001092218.A94FF61359@smtp.codeaurora.org>
Date: Tue,  1 Oct 2019 09:22:13 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191001_022219_683906_CE30D9D7 
X-CRM114-Status: UNSURE (   5.97  )
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: netdev@vger.kernel.org, linux-wireless@vger.kernel.org, davem@davemloft.net,
 linux-kernel@vger.kernel.org, libertas-dev@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "libertas-dev" <libertas-dev-bounces@lists.infradead.org>
Errors-To: libertas-dev-bounces+lists+libertas-dev=lfdr.de@lists.infradead.org

Allen Pais <allen.pais@oracle.com> wrote:

> alloc_workqueue is not checked for errors and as a result,
> a potential NULL dereference could occur.
> 
> Signed-off-by: Allen Pais <allen.pais@oracle.com>

Patch applied to wireless-drivers-next.git, thanks.

7da413a18583 libertas: fix a potential NULL pointer dereference

-- 
https://patchwork.kernel.org/patch/11150757/

https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches


_______________________________________________
libertas-dev mailing list
libertas-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/libertas-dev
