Return-Path: <libertas-dev-bounces+lists+libertas-dev=lfdr.de@lists.infradead.org>
X-Original-To: lists+libertas-dev@lfdr.de
Delivered-To: lists+libertas-dev@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EAB91A9708
	for <lists+libertas-dev@lfdr.de>; Wed, 15 Apr 2020 10:42:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:To:References:
	In-Reply-To:From:Subject:MIME-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+GxLhJjPcRW7pBBt4rS2KFVg0c7Or1XG6qnCbomJ+HQ=; b=TaB2U2R4Rp8sYV
	BCpHUhfR6F4xZSaoJL+fn2U0nIsX9H4iIDwZQqh9HY/f5GQPw79kvUOGk3fskxvUy6DBHUB/JQ2UP
	fJOrTRTh0eoOjqMC9hbiJjIM2OqdlXX4geMHS3qpNVlw09lF7WdMzX7XirF62IE/jEW19/eNOdj4N
	IusmVtKPL481Ws3impYPlFoEgjGyP9eFsNrqdUYGdJQUG+w2hTsoTiEeIdSbfIZZhSyieRPuXWk6g
	iOgroYEGoS5HIwomXFb2GCCqcMi0FWxAEJhi+mwmBn8zZZH5YYuAS5LL5V495sElPsEzVGycjtIHY
	6ylUBsr8IVlTZa36l9pQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOdc9-0007JR-Vg; Wed, 15 Apr 2020 08:41:47 +0000
Received: from mail27.static.mailgun.info ([104.130.122.27])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOdaB-0002vO-Lw
 for libertas-dev@lists.infradead.org; Wed, 15 Apr 2020 08:39:45 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1586939982; h=Date: Message-Id: Cc: To: References:
 In-Reply-To: From: Subject: Content-Transfer-Encoding: MIME-Version:
 Content-Type: Sender; bh=yt5GAkeWutdoRiLVjNmQh1PYnCw5y+LdfOz0sU6qfrQ=;
 b=mQhK+wz2omOj118iuVVVwK228P/J9yU4jWPExtoLTm1Xs0QzGXlcWlWLvm8J52DHhZ8TC+8Z
 sTkRgmyalLW9VhLIXHSXiuZUGdobXKzaeHq054F6Z9nz1dPj9+Y9PU5xJZLleuWa4tc6jgax
 +6Unn5hYiAfrse+dtRWL1gX4rYU=
X-Mailgun-Sending-Ip: 104.130.122.27
X-Mailgun-Sid: WyJhMDJjNSIsICJsaWJlcnRhcy1kZXZAbGlzdHMuaW5mcmFkZWFkLm9yZyIsICJiZTllNGEiXQ==
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5e96c84d.7ffb0b4914c8-smtp-out-n05;
 Wed, 15 Apr 2020 08:39:41 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id BCF07C433F2; Wed, 15 Apr 2020 08:39:39 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=0.5 required=2.0 tests=ALL_TRUSTED,MISSING_DATE,
 MISSING_MID,SPF_NONE autolearn=no autolearn_force=no version=3.4.0
Received: from potku.adurom.net (88-114-240-156.elisa-laajakaista.fi
 [88.114.240.156])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested) (Authenticated sender: kvalo)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 33D41C433F2;
 Wed, 15 Apr 2020 08:39:35 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 33D41C433F2
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
MIME-Version: 1.0
Subject: Re: [PATCH] libertas: make lbs_init_mesh() void
From: Kalle Valo <kvalo@codeaurora.org>
In-Reply-To: <20200410090942.27239-1-yanaijie@huawei.com>
References: <20200410090942.27239-1-yanaijie@huawei.com>
To: Jason Yan <yanaijie@huawei.com>
User-Agent: pwcli/0.0.0-git (https://github.com/kvalo/pwcli/) Python/2.7.12
Message-Id: <20200415083939.BCF07C433F2@smtp.codeaurora.org>
Date: Wed, 15 Apr 2020 08:39:39 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200415_013943_809169_1A5C498F 
X-CRM114-Status: UNSURE (   7.13  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [104.130.122.27 listed in list.dnswl.org]
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
Cc: libertas-dev@lists.infradead.org, netdev@vger.kernel.org,
 yanaijie@huawei.com, linux-wireless@vger.kernel.org,
 linux-kernel@vger.kernel.org, lkundrak@v3.sk, colin.king@canonical.com,
 davem@davemloft.net, dan.carpenter@oracle.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "libertas-dev" <libertas-dev-bounces@lists.infradead.org>
Errors-To: libertas-dev-bounces+lists+libertas-dev=lfdr.de@lists.infradead.org

Jason Yan <yanaijie@huawei.com> wrote:

> Fix the following coccicheck warning:
> 
> drivers/net/wireless/marvell/libertas/mesh.c:833:5-8: Unneeded variable:
> "ret". Return "0" on line 874
> 
> Reported-by: Hulk Robot <hulkci@huawei.com>
> Signed-off-by: Jason Yan <yanaijie@huawei.com>
> Reviewed-by: Lubomir Rintel <lkundrak@v3.sk>

Patch applied to wireless-drivers-next.git, thanks.

2fd5fdca6a3a libertas: make lbs_init_mesh() void

-- 
https://patchwork.kernel.org/patch/11483039/

https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches

_______________________________________________
libertas-dev mailing list
libertas-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/libertas-dev
