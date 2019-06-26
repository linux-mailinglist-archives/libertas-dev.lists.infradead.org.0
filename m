Return-Path: <libertas-dev-bounces+lists+libertas-dev=lfdr.de@lists.infradead.org>
X-Original-To: lists+libertas-dev@lfdr.de
Delivered-To: lists+libertas-dev@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A099E56E44
	for <lists+libertas-dev@lfdr.de>; Wed, 26 Jun 2019 18:02:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0cb9wSotONQiN1b3ILnv3oeGTZYcejd2Lw+sENopiIg=; b=eZP5LfdJ660Z7H
	KHKCfk9kQL8lrh+otiOXcQgb9QiWUjhouKxs7RLLzXgQ8nyduk45n9NWxe5fT2NLlMHdpRv6FKG0n
	BtFXmkV1QTHQzfRyg0vcuoLODtpNAmxY0Gy+5gHCR6yUWlPLpW5Krh0gwT1OoiwTUxxrZt3nBpDeu
	zaBFiDmME1YAG7DtcipZKiuY5Pc2RxscSy0gHbOsrnht/GAsIwiZzzPStILKlmiOOsy2dg+2uzbpQ
	PHzv4RK7yAF/3Fkz+sNHKVbJsbSlw/Gq6JggFBOjlxZCu9mm2Jl8qNOzlhqn2quPtxnKiK3sfxkKV
	+G35xftcnh00lhu0mZtg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgANQ-00007N-Mx; Wed, 26 Jun 2019 16:02:28 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgANN-00006o-Ue
 for libertas-dev@lists.infradead.org; Wed, 26 Jun 2019 16:02:27 +0000
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 62B853087930;
 Wed, 26 Jun 2019 16:02:22 +0000 (UTC)
Received: from ovpn-112-45.rdu2.redhat.com (ovpn-112-45.rdu2.redhat.com
 [10.10.112.45])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 5F78D5D9C6;
 Wed, 26 Jun 2019 16:02:20 +0000 (UTC)
Message-ID: <e679c9f99d6952f82924c71f036e4a196d0e72d4.camel@redhat.com>
Subject: Re: [PATCH] libertas: Fix a double free in if_spi_c2h_data()
From: Dan Williams <dcbw@redhat.com>
To: Dan Carpenter <dan.carpenter@oracle.com>
Date: Wed, 26 Jun 2019 11:02:19 -0500
In-Reply-To: <20190626132340.GE28859@kadam>
References: <20190626100926.GD3242@mwanda>
 <be491ab35ba46111a1c90cc12b6d5ff6ea3f57e8.camel@redhat.com>
 <20190626132340.GE28859@kadam>
User-Agent: Evolution 3.30.5 (3.30.5-1.fc29) 
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.45]); Wed, 26 Jun 2019 16:02:25 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190626_090226_010272_2BA8A80E 
X-CRM114-Status: UNSURE (   8.89  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [209.132.183.28 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
 Kalle Valo <kvalo@codeaurora.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "libertas-dev" <libertas-dev-bounces@lists.infradead.org>
Errors-To: libertas-dev-bounces+lists+libertas-dev=lfdr.de@lists.infradead.org

On Wed, 2019-06-26 at 16:23 +0300, Dan Carpenter wrote:
> Yeah.  That looks nicer.  Could you send it as a proper patch and
> give
> me Reported-by credit?

Will do.

Dan


_______________________________________________
libertas-dev mailing list
libertas-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/libertas-dev
