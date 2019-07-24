Return-Path: <libertas-dev-bounces+lists+libertas-dev=lfdr.de@lists.infradead.org>
X-Original-To: lists+libertas-dev@lfdr.de
Delivered-To: lists+libertas-dev@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AE9C672E09
	for <lists+libertas-dev@lfdr.de>; Wed, 24 Jul 2019 13:46:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:To:References:
	In-Reply-To:From:Subject:MIME-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VbAJf0cqJtKu/5VE1efszGuc+B5/3mErjDR8a3muenc=; b=nCvd/wdtRdJ+s0
	baqQxYb0JXNrJOao0pkhBCXs81vpIwUd0tzl4QSACjsBSm1JTQ3Cm4VY5s4naVMoQIOm9d+P8f/1N
	E4nlKBzzOun3SGZMujzIWyQvfYEQoE6e9aTVQOjrZ+dtaAnaWGE+ZMGM44/tzLdTl07PiN8cp8Xmr
	PNtojGGFK8ii5F+R7U65NFcy6PL2DkPBBtVd6N1B0YmA4FLmaOSQmKKZi4KHR19Nh9cetQaRtC7e9
	ReO4LtM2gq6EApunO4teoZvNoI5FEF+ozosNZ7LuMrgqy+Tgj6+3yOwNBbvnLNnMsdyeEnUEt9NNu
	iIUZlthUUKBH/g/ApLMQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqFjL-0008MZ-UK; Wed, 24 Jul 2019 11:46:47 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqFjI-0008MC-Nl
 for libertas-dev@lists.infradead.org; Wed, 24 Jul 2019 11:46:46 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id 55052605A0; Wed, 24 Jul 2019 11:46:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1563968804;
 bh=8GMy6D9kKSxX1S2u4a7+1Kw8UopIWsJg3jqvMN3WoMo=;
 h=Subject:From:In-Reply-To:References:To:Cc:Date:From;
 b=jUrnCMmi5Bzem/XphkYN48AykMbjBE+gxZGhIeZd5YJElWWB1+xcV1AZBKx9RDHSP
 FwI4tOaRBu2aYFqbSd7MMEDSmXJB/J4KuH2mRyoX33z2XumpKhvN4GR93YDq/8kKzf
 0RSrgP52YyS4qNOPQGlJc69V7GHyKbYtU75gHHl4=
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
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 8C7A5605A0;
 Wed, 24 Jul 2019 11:46:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1563968802;
 bh=8GMy6D9kKSxX1S2u4a7+1Kw8UopIWsJg3jqvMN3WoMo=;
 h=Subject:From:In-Reply-To:References:To:Cc:From;
 b=ka2nhMBTr36hbaZxPYaYrU3WubcNoc3qj3znL2XGpSaBLSlP7Owbk7Z4Kt9cON1pE
 tmkieEpQG8pVFr/nLYjIbCZGGtjjmpVS0mRp4ARf/n6/zN62oRUQi4tRA5XoPjctDV
 /mFUHQmlmH3aZQZLIaMDYMljrtgmWh6jgVcF/Yl8=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 8C7A5605A0
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
MIME-Version: 1.0
Subject: Re: [PATCH v2] libertas: Fix a double free in if_spi_c2h_data()
From: Kalle Valo <kvalo@codeaurora.org>
In-Reply-To: <ee4472e4728becc9713962ba264742cb1f337098.camel@redhat.com>
References: <ee4472e4728becc9713962ba264742cb1f337098.camel@redhat.com>
To: Dan Williams <dcbw@redhat.com>
User-Agent: pwcli/0.0.0-git (https://github.com/kvalo/pwcli/) Python/2.7.12
Message-Id: <20190724114644.55052605A0@smtp.codeaurora.org>
Date: Wed, 24 Jul 2019 11:46:43 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190724_044644_799103_3D6A268B 
X-CRM114-Status: UNSURE (   8.12  )
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
Cc: Philip Rakity <prakity@yahoo.com>, libertas-dev@lists.infradead.org,
 kernel-janitors@vger.kernel.org, linux-wireless@vger.kernel.org,
 Lubomir Rintel <lkundrak@v3.sk>, Dan Carpenter <dan.carpenter@oracle.com>,
 Allison Randal <allison@lohutok.net>
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

Failed to compile:

drivers/net/wireless/marvell/libertas/if_spi.c: In function 'if_spi_c2h_data':
drivers/net/wireless/marvell/libertas/if_spi.c:771:11: error: expected ';' before '}' token
   goto out
           ^
           ;
  }
  ~         
make[5]: *** [drivers/net/wireless/marvell/libertas/if_spi.o] Error 1
make[4]: *** [drivers/net/wireless/marvell/libertas] Error 2
make[3]: *** [drivers/net/wireless/marvell] Error 2
make[3]: *** Waiting for unfinished jobs....
make[2]: *** [drivers/net/wireless] Error 2
make[1]: *** [drivers/net] Error 2
make[1]: *** Waiting for unfinished jobs....
make: *** [drivers] Error 2

Patch set to Changes Requested.

-- 
https://patchwork.kernel.org/patch/11033059/

https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches


_______________________________________________
libertas-dev mailing list
libertas-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/libertas-dev
