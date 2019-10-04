Return-Path: <libertas-dev-bounces+lists+libertas-dev=lfdr.de@lists.infradead.org>
X-Original-To: lists+libertas-dev@lfdr.de
Delivered-To: lists+libertas-dev@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EFCACBC21
	for <lists+libertas-dev@lfdr.de>; Fri,  4 Oct 2019 15:47:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:To:References:
	In-Reply-To:From:Subject:MIME-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pUT46fMKjVnZylbRX8Xukco04acAuTkTk4goqxqm/mk=; b=Yj21+Rdi4S12y0
	ScnsBGkNh7O26rCS+XzcwNpPpRfe36pYsG3KBagFAV7K1DdGVh6t89XCR8aXaSyZOh1s1Mk+QBN4x
	cNgnKGCZDnxdQLAdasNMUS/AlPWXXB2U82GIcZyg6dbXqn3VSWiTKY/LlXTcwCE5CM96HDMopzHno
	imIXL3NELlRvlyl8q84CHdlkRcYBmkMEEAYBKMd9f/d8x47PgAjY/f1dAjRBbGCxt7IVtw6YjGQfU
	kBHqgI1j51IN2wimVN56MFtj8v6nj9+EkCtnER2XfmcmoYcDJcMmE1gD4rbV6R+gANcO/IP9I78gV
	PmgDRuxvCFQx/wbl/v6w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iGNuw-0003qB-1D; Fri, 04 Oct 2019 13:46:46 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iGNus-0003pp-AB
 for libertas-dev@lists.infradead.org; Fri, 04 Oct 2019 13:46:43 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id 9806F61A21; Fri,  4 Oct 2019 13:46:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1570196800;
 bh=7z8K8z1kVtW4QRmy9LQUNBsQnTcmL+HKDaKSTRVrlrk=;
 h=Subject:From:In-Reply-To:References:To:Cc:Date:From;
 b=EDEe6JQluW0rMDHXc+JklWXrUEtHl+uPY+a6CM/uzAmzK2m6JdXcM1r3EpFnY/rJ8
 ggaPZBf5v69vtkJHEqXBjfKqGMrYQTMdvil7ku78qE0q42g7v6YP1N+WEbfd3hoCSJ
 wWOAxduIqfa1h3u9YweKjQsEJdyE0WYIgn+AcsoQ=
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
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 40FD2613A8;
 Fri,  4 Oct 2019 13:46:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1570196800;
 bh=7z8K8z1kVtW4QRmy9LQUNBsQnTcmL+HKDaKSTRVrlrk=;
 h=Subject:From:In-Reply-To:References:To:Cc:From;
 b=ViTfqnTxmBIMf4p1Hx277E8BubfHs+nBxCPzvrE/JNSgJ1JjSfbBjO+SzAWFQpDWw
 NMi5PtAtTJw96KeSqS0vcM8BKX82vv3jiQ542DUG6ovIS6xMyT6P6IfNWdFefh0iOO
 7gKaeeclOdMMHzX/S8JIFNdXaEeMeAGqlqB+a/gE=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 40FD2613A8
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
MIME-Version: 1.0
Subject: Re: [PATCH] libertas: remove redundant assignment to variable ret
From: Kalle Valo <kvalo@codeaurora.org>
In-Reply-To: <20191002101517.10836-1-colin.king@canonical.com>
References: <20191002101517.10836-1-colin.king@canonical.com>
To: Colin King <colin.king@canonical.com>
User-Agent: pwcli/0.0.0-git (https://github.com/kvalo/pwcli/) Python/2.7.12
Message-Id: <20191004134640.9806F61A21@smtp.codeaurora.org>
Date: Fri,  4 Oct 2019 13:46:40 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191004_064642_386205_9A589A65 
X-CRM114-Status: UNSURE (   7.72  )
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
> The variable ret is being assigned a value that is never read and is
> being re-assigned a little later on. The assignment is redundant and hence
> can be removed.
> 
> Addresses-Coverity: ("Unused value")
> Signed-off-by: Colin Ian King <colin.king@canonical.com>
> Reviewed-by: Dan Carpenter <dan.carpenter@oracle.com>

Patch applied to wireless-drivers-next.git, thanks.

60b5b49f6a6e libertas: remove redundant assignment to variable ret

-- 
https://patchwork.kernel.org/patch/11170731/

https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches


_______________________________________________
libertas-dev mailing list
libertas-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/libertas-dev
