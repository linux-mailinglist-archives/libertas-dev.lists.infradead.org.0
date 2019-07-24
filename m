Return-Path: <libertas-dev-bounces+lists+libertas-dev=lfdr.de@lists.infradead.org>
X-Original-To: lists+libertas-dev@lfdr.de
Delivered-To: lists+libertas-dev@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8382372E22
	for <lists+libertas-dev@lfdr.de>; Wed, 24 Jul 2019 13:49:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:To:References:
	In-Reply-To:From:Subject:MIME-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bAAZiP7MJr/HlXTEVBmkGQtvKz2YvDXy9URICP8GsL4=; b=Hxd0bGete5sZIg
	gWOMgQsG31TM9EUGk7Eb4PEylmx2nvej1lGfcnwHwn3ebEdZSsKIFJLE78g3Vsf1+PTst4qAiWhFA
	jtyHYkcbvwVqK17/4lzVXo3J0nxAV/OoQ2HWYABqBvz+RWUBBNxpL0xMkbGKbLqJXysMN0ilKad5T
	eihH0V2msZ0PC9qG0dUUi+CRiYoUeeeqExVGTF+b2s6OTexqJcCtvN/Z+gDhApeyPXM9yMW8E9Prs
	1tfTzMq223mCZI4K+Ym61TXcJiaYvtYgPQZxOh0ZyZwGim0x6m7EMmYWyBYPeLJF84yWBGE39xXc2
	RmFOWHaT4MIifzDqaaAg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqFlk-0000hH-5v; Wed, 24 Jul 2019 11:49:16 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqFlg-0000gJ-MY
 for libertas-dev@lists.infradead.org; Wed, 24 Jul 2019 11:49:14 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id 1940B60A97; Wed, 24 Jul 2019 11:49:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1563968951;
 bh=42X7y5jJNRiCroR9vcblJwiwKYId8aMdP1NkVM2G/cM=;
 h=Subject:From:In-Reply-To:References:To:Cc:Date:From;
 b=K+E4ljfhKOBwKjcpLWyV1MHG4fZH4ABjLw93pfPl/H7soTD1ba6LOnQyk1kOWWgKm
 lpbjAk2MKfek+qGSF0Tz4xMLusAkVY5Qp0WEGn1H1HRc/143ypjevI3Afsi5BsrisK
 BqRIwSfMxqnEAHSCQvnT5yxfk+nRQCYjqs2MZJPI=
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
 by smtp.codeaurora.org (Postfix) with ESMTPSA id B27D26044E;
 Wed, 24 Jul 2019 11:49:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1563968946;
 bh=42X7y5jJNRiCroR9vcblJwiwKYId8aMdP1NkVM2G/cM=;
 h=Subject:From:In-Reply-To:References:To:Cc:From;
 b=V4goodYFjZUkBLLOfZJnbzqps9+Gv5bQrb3NHB0izq8zXvcrYQ8MPqzowV6xYho/V
 cz2lb44YHCgoXnIbwMHfGlea8l2lHRNzEaFCE4d937M/1m/qRZI7FTgqrC4xwB9M6H
 PjIqNclMdJdc4hCuz6afAyPAxPGwGZugbcd1JTFM=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org B27D26044E
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
MIME-Version: 1.0
Subject: Re: [PATCH] libertas: Add missing sentinel at end of if_usb.c fw_table
From: Kalle Valo <kvalo@codeaurora.org>
In-Reply-To: <20190710133138.GA31901@ip-172-31-14-16>
References: <20190710133138.GA31901@ip-172-31-14-16>
To: Kevin Easton <kevin@guarana.org>
User-Agent: pwcli/0.0.0-git (https://github.com/kvalo/pwcli/) Python/2.7.12
Message-Id: <20190724114911.1940B60A97@smtp.codeaurora.org>
Date: Wed, 24 Jul 2019 11:49:08 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190724_044912_762207_3F9F2605 
X-CRM114-Status: UNSURE (   7.27  )
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: libertas-dev@lists.infradead.org, andreyknvl@google.com,
 linux-wireless@vger.kernel.org, linux-kernel@vger.kernel.org,
 syzkaller-bugs@googlegroups.com,
 syzbot <syzbot+98156c174c5a2cad9f8f@syzkaller.appspotmail.com>,
 netdev@vger.kernel.org, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "libertas-dev" <libertas-dev-bounces@lists.infradead.org>
Errors-To: libertas-dev-bounces+lists+libertas-dev=lfdr.de@lists.infradead.org

Kevin Easton <kevin@guarana.org> wrote:

> This sentinel tells the firmware loading process when to stop.
> 
> Reported-and-tested-by: syzbot+98156c174c5a2cad9f8f@syzkaller.appspotmail.com
> Signed-off-by: Kevin Easton <kevin@guarana.org>

Patch applied to wireless-drivers-next.git, thanks.

764f3f1ecffc libertas: Add missing sentinel at end of if_usb.c fw_table

-- 
https://patchwork.kernel.org/patch/11038493/

https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches


_______________________________________________
libertas-dev mailing list
libertas-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/libertas-dev
