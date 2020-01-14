Return-Path: <libertas-dev-bounces+lists+libertas-dev=lfdr.de@lists.infradead.org>
X-Original-To: lists+libertas-dev@lfdr.de
Delivered-To: lists+libertas-dev@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E4A1D13A788
	for <lists+libertas-dev@lfdr.de>; Tue, 14 Jan 2020 11:40:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=k4G055TIabMRtHtmCRLdu3695s1sDdGnzqgmVvzF11c=; b=UMI2VKxCMtsEJtgxgydOImxI7E
	Ynqb4XPy1OCrte7Wlhc185YgSGxjR2pcH0OcoK5wssoxCX5F5yfuOVaeIETuBY/F6Kuo8Lmx/+ZKh
	ej0vNaKoQaFiw5ahI81NUUwBAPedj3qMfZQ2PQ57UnMj9s3qXKeCtxu2bymRWzNuigfbnyBZRG26T
	iKiqugJIqpuk2gA0CrktaPax3koPBcWQx/g6ErZp5+AUAVCOUtml02rXKWM36cr4T1Lg1GP2pbuYy
	JC2cGoZxV7cOw5DYdMOPYHMxWttZpddXIHN+EfRVnwTr/UP83uDYAGWBqpppapXshAWdVQrMZgt1n
	NSM+F2/w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irJc6-00042I-Kq; Tue, 14 Jan 2020 10:39:58 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irJbx-00040S-Cg
 for libertas-dev@lists.infradead.org; Tue, 14 Jan 2020 10:39:55 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id 767A4AD55;
 Tue, 14 Jan 2020 10:39:46 +0000 (UTC)
From: Nicolai Stange <nstange@suse.de>
To: Kalle Valo <kvalo@codeaurora.org>
Subject: [PATCH 0/2] libertas: fix rates overflow code path in
 lbs_ibss_join_existing()
Date: Tue, 14 Jan 2020 11:39:01 +0100
Message-Id: <20200114103903.2336-1-nstange@suse.de>
X-Mailer: git-send-email 2.16.4
In-Reply-To: <87woa04t2v.fsf@suse.de>
References: <87woa04t2v.fsf@suse.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200114_023949_575751_2D5EBABB 
X-CRM114-Status: UNSURE (   8.16  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [195.135.220.15 listed in wl.mailspike.net]
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
Cc: Nicolai Stange <nstange@suse.de>, libertas-dev@lists.infradead.org,
 Takashi Iwai <tiwai@suse.de>, netdev@vger.kernel.org,
 linux-wireless@vger.kernel.org, linux-kernel@vger.kernel.org,
 Wen Huang <huangwenabc@gmail.com>, Miroslav Benes <mbenes@suse.cz>,
 "David S. Miller" <davem@davemloft.net>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "libertas-dev" <libertas-dev-bounces@lists.infradead.org>
Errors-To: libertas-dev-bounces+lists+libertas-dev=lfdr.de@lists.infradead.org

Hi,

these two patches here attempt to cleanup two related issues ([1])
introduced with commit e5e884b42639 ("libertas: Fix two buffer overflows
at parsing bss descriptor"), currently queued at the  wireless-drivers
tree.

Feel free to squash this into one commit.

I don't own the hardware and did some compile-testing on x86_64 only.

Thanks,

Nicolai

[1] https://lkml.kernel.org/r/87woa04t2v.fsf@suse.de


Nicolai Stange (2):
  libertas: don't exit from lbs_ibss_join_existing() with RCU read lock
    held
  libertas: make lbs_ibss_join_existing() return error code on rates
    overflow

 drivers/net/wireless/marvell/libertas/cfg.c | 2 ++
 1 file changed, 2 insertions(+)

-- 
2.16.4


_______________________________________________
libertas-dev mailing list
libertas-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/libertas-dev
