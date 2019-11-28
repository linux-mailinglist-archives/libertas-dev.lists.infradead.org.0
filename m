Return-Path: <libertas-dev-bounces+lists+libertas-dev=lfdr.de@lists.infradead.org>
X-Original-To: lists+libertas-dev@lfdr.de
Delivered-To: lists+libertas-dev@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E58B810C83B
	for <lists+libertas-dev@lfdr.de>; Thu, 28 Nov 2019 12:54:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hEoe4n3oE936igG1EPvw5CuIBzLk+xfGdTZLXvGCNGY=; b=L/OrGnAmyM7wJw
	iKkyY7P8b7QL2dpbJeuY78Wo5iBubUbIbIoLHCgXR/D6aLbLcL3mlx9mtCen8eBzE97w4vwDIqfmM
	fTwnyf7QSxq0SmrMeOxU97Rn6j/sDGtlm5S4OlGB9tYBzMxyuQnd5M/BInxoJBeIBCKXM/M+O5fh1
	xTR80fy508vAcIHuo+ISWV8LOOCNW4Dsj9f3qY3PStv2yNmsHG2IqZlMwh038KVH4GYWHQ1SyN+5j
	Mu9iTTV9RGzT6Ap5jEEMLYe98mNzdakz/BinCmY0as+SMXoMbWn0CjpgVVvfBn5P96okOjqSl2tad
	9LCHRIcs/Y33C0Fejc2Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iaING-000895-Ql; Thu, 28 Nov 2019 11:54:18 +0000
Received: from a27-188.smtp-out.us-west-2.amazonses.com ([54.240.27.188])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iaIND-00088c-Su
 for libertas-dev@lists.infradead.org; Thu, 28 Nov 2019 11:54:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
 s=zsmsymrwgfyinv5wlfyidntwsjeeldzt; d=codeaurora.org; t=1574942053;
 h=From:To:Cc:Subject:References:Date:In-Reply-To:Message-ID:MIME-Version:Content-Type;
 bh=6GEjRHiymZz2qpzisceFU6do1VPZDdWVVzA6Rg/sl3c=;
 b=IIaW33lk6S6YFKw5CfWK1ctFgbekAlbn29ZIGiAiO4BR5fK+HT3vrzvQAoYSh1zW
 4SK31WUfarNAVfi7ViWS+S6VF+OVBr9Y1/xR97aIyvS6ifh9pFmsLMoIuIK0f5OqyaB
 yEnuLa8KndQt7FK3ODp6YVwM6NVP+vsKrMlw3zu8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
 s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1574942053;
 h=From:To:Cc:Subject:References:Date:In-Reply-To:Message-ID:MIME-Version:Content-Type:Feedback-ID;
 bh=6GEjRHiymZz2qpzisceFU6do1VPZDdWVVzA6Rg/sl3c=;
 b=SGbfYeY2c78gW2pM6y4TTzcKOd0I7c6+57f0dQ6M17rDCPC/vBMgeIpYLr4nB8V4
 m8kMZsxqDhGlEIilO1O7QvKev8IcSb10LXo01FzuRCOGfzFi5u7UDbtUtWpcdZU3K8Z
 kV9bkJpb+aHE3Hg+lq+Q8OXV3INqLoAzFQwYRDLE=
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED,SPF_NONE
 autolearn=unavailable autolearn_force=no version=3.4.0
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 5CD2CC447A0
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
From: Kalle Valo <kvalo@codeaurora.org>
To: Wen Huang <huangwenabc@gmail.com>
Subject: Re: [PATCH] libertas: Fix two buffer overflows at parsing bss
 descriptor
References: <20191122052917.11309-1-huangwenabc@gmail.com>
 <0101016eb106d678-62ccf480-a650-47f2-87b3-cb5a03deb013-000000@us-west-2.amazonses.com>
 <CADt2dQfbnk5WgDk=oeWjE1tziCEem-3fhhA68Pmr_fo0pZ_V=g@mail.gmail.com>
Date: Thu, 28 Nov 2019 11:54:13 +0000
In-Reply-To: <CADt2dQfbnk5WgDk=oeWjE1tziCEem-3fhhA68Pmr_fo0pZ_V=g@mail.gmail.com>
 (Wen Huang's message of "Thu, 28 Nov 2019 19:03:27 +0800")
Message-ID: <0101016eb1dc92b2-39a6b1c0-cd4b-4050-96f6-e140b0211640-000000@us-west-2.amazonses.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/24.5 (gnu/linux)
MIME-Version: 1.0
X-SES-Outgoing: 2019.11.28-54.240.27.188
Feedback-ID: 1.us-west-2.CZuq2qbDmUIuT3qdvXlRHZZCpfZqZ4GtG9v3VKgRyF0=:AmazonSES
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191128_035416_031323_FED334B1 
X-CRM114-Status: UNSURE (   6.85  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.5 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [54.240.27.188 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 1.5 FROM_FMBLA_NEWDOM      From domain was registered in last 7 days
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
Cc: linux-wireless@vger.kernel.org, libertas-dev@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "libertas-dev" <libertas-dev-bounces@lists.infradead.org>
Errors-To: libertas-dev-bounces+lists+libertas-dev=lfdr.de@lists.infradead.org

Wen Huang <huangwenabc@gmail.com> writes:

> I have modified the patch and submmit:
> https://patchwork.kernel.org/patch/11265751/ 

Thanks, but few tips for the future (no need to resend because of
these):

* don't use HTML in email

* use v2, v3 and so on to identify the version of the patch

* do not top post

More info in the link below, I suggest to carefully study that. Better
chances of getting your patches accepted that way.

-- 
https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches

_______________________________________________
libertas-dev mailing list
libertas-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/libertas-dev
