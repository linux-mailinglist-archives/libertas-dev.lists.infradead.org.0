Return-Path: <libertas-dev-bounces+lists+libertas-dev=lfdr.de@lists.infradead.org>
X-Original-To: lists+libertas-dev@lfdr.de
Delivered-To: lists+libertas-dev@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8ECF31A9744
	for <lists+libertas-dev@lfdr.de>; Wed, 15 Apr 2020 10:46:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:To:References:
	In-Reply-To:From:Subject:MIME-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0JFWqR4gf0V2PNF008KqsFD5R+Ake7ITFlMgGufTXmg=; b=ce9axDn7GWuGp5
	2YmxtnP4mvB9RVeUhJ18WS/J3oMF+shVtBlxof+YKCSa9D1mRBzP5EGXw04MVP5QUTI9DqZKWjVpC
	7Gl9Dk11x/fUjbWgxrn/gpw8p+8t5RtF/ulmGQ9DNb60ZtrDyl1xsNaHHgccyoFSZbctxS/RKojXl
	zUdzsMAzlDNHGnpIacaaBsdOFaUw1tV8hVYL/AekPdKDxnlgWFiBKkC0rFEvW/RRFWsEtcD26xN1X
	B9OmlBhjohBJBhzXiZWyyOkdLw1ZtU9Xgg9nNYk/97GJIV6pH9kNwgY7PBmWr395U0T2bC2t0JGQJ
	2Z756Xj83zlATf296SxQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOdh0-0003QE-Ir; Wed, 15 Apr 2020 08:46:46 +0000
Received: from mail26.static.mailgun.info ([104.130.122.26])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOdgx-0003PP-1G
 for libertas-dev@lists.infradead.org; Wed, 15 Apr 2020 08:46:44 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1586940402; h=Date: Message-Id: Cc: To: References:
 In-Reply-To: From: Subject: Content-Transfer-Encoding: MIME-Version:
 Content-Type: Sender; bh=kkpKJEWGrdRRWfb5jjxaq9Sgn4Xyd8oHhK5zGxf9zgk=;
 b=ow/B4IT8gAx4JEnEoJBBPyrchgBIIqgD7lKvV2ODmjzIHQqQjDe9wkE4KqsKfzO4ZfVaMi8E
 DK5KltlvqSypxo7mzBl/vCeku7kSWqSroBQEEbF5G6Al+0hNqaqljN9DLxlOS5M7yN8jEu8Z
 C3FZwiUccGCXzJukyvuxHdh1Xps=
X-Mailgun-Sending-Ip: 104.130.122.26
X-Mailgun-Sid: WyJhMDJjNSIsICJsaWJlcnRhcy1kZXZAbGlzdHMuaW5mcmFkZWFkLm9yZyIsICJiZTllNGEiXQ==
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5e96c9f2.7f330a8385a8-smtp-out-n05;
 Wed, 15 Apr 2020 08:46:42 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id 0B9F0C433F2; Wed, 15 Apr 2020 08:46:41 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=0.5 required=2.0 tests=ALL_TRUSTED,MISSING_DATE,
 MISSING_MID,SPF_NONE autolearn=no autolearn_force=no version=3.4.0
Received: from potku.adurom.net (88-114-240-156.elisa-laajakaista.fi
 [88.114.240.156])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested) (Authenticated sender: kvalo)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 9BA9FC433CB;
 Wed, 15 Apr 2020 08:46:38 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 9BA9FC433CB
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
MIME-Version: 1.0
Subject: Re: [PATCH] libertas: make lbs_process_event() void
From: Kalle Valo <kvalo@codeaurora.org>
In-Reply-To: <20200413082022.22380-1-yanaijie@huawei.com>
References: <20200413082022.22380-1-yanaijie@huawei.com>
To: Jason Yan <yanaijie@huawei.com>
User-Agent: pwcli/0.0.0-git (https://github.com/kvalo/pwcli/) Python/2.7.12
Message-Id: <20200415084641.0B9F0C433F2@smtp.codeaurora.org>
Date: Wed, 15 Apr 2020 08:46:41 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200415_014643_140742_909E3B74 
X-CRM114-Status: UNSURE (   6.91  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: libertas-dev@lists.infradead.org, netdev@vger.kernel.org,
 yanaijie@huawei.com, linux-wireless@vger.kernel.org,
 linux-kernel@vger.kernel.org, Hulk Robot <hulkci@huawei.com>,
 davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "libertas-dev" <libertas-dev-bounces@lists.infradead.org>
Errors-To: libertas-dev-bounces+lists+libertas-dev=lfdr.de@lists.infradead.org

Jason Yan <yanaijie@huawei.com> wrote:

> Fix the following coccicheck warning:
> 
> drivers/net/wireless/marvell/libertas/cmdresp.c:225:5-8: Unneeded
> variable: "ret". Return "0" on line 355
> 
> Reported-by: Hulk Robot <hulkci@huawei.com>
> Signed-off-by: Jason Yan <yanaijie@huawei.com>

Patch applied to wireless-drivers-next.git, thanks.

99cd87d63c0b libertas: make lbs_process_event() void

-- 
https://patchwork.kernel.org/patch/11485245/

https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches

_______________________________________________
libertas-dev mailing list
libertas-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/libertas-dev
