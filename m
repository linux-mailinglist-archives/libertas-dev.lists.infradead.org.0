Return-Path: <libertas-dev-bounces+lists+libertas-dev=lfdr.de@lists.infradead.org>
X-Original-To: lists+libertas-dev@lfdr.de
Delivered-To: lists+libertas-dev@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B5CC13B97C
	for <lists+libertas-dev@lfdr.de>; Wed, 15 Jan 2020 07:21:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sZ0d9ROttOPoXPMHfJ5z+49o8saaWl57FvL8xX8DNOQ=; b=hv/aGMzqhXDfHM
	HOVBbaiCVhQbScecHUNlC2FZ5Qr27vXGjUVyAbQUQSiFK3+/un8k8iCORv7u2zRSmuncDuwa3khix
	ieVSSIdtiqVTSY4/SSFCtZzyqzoUUi3aEYRet6bI7C1nuXP0oRfAaoANLW4Zu3B9RZiidMhj+dStR
	IhS/zBDjRq9HsyzsxxVEwspv3P+KFqNZDr0hlcN0g8df32unVZ6ltjQx+lAFw/9MHI2YDBGQUemR8
	WzmoONQ750gKGcAwFS9XyMAlplDsiuG/5NE7ReUXeXxUj8ACAj6QmV1unTMKCVaFswmBfhB71sjwE
	fl4t0zF+D6ju4NmEwpWw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irc3k-0004Tb-6i; Wed, 15 Jan 2020 06:21:44 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irc3e-0004Sc-Sz
 for libertas-dev@lists.infradead.org; Wed, 15 Jan 2020 06:21:42 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id 4ECD1B089;
 Wed, 15 Jan 2020 06:21:36 +0000 (UTC)
From: Nicolai Stange <nstange@suse.de>
To: Kalle Valo <kvalo@codeaurora.org>
Subject: Re: [PATCH 1/2] libertas: don't exit from lbs_ibss_join_existing()
 with RCU read lock held
References: <87woa04t2v.fsf@suse.de> <20200114103903.2336-1-nstange@suse.de>
 <20200114103903.2336-2-nstange@suse.de>
 <87o8v6qhkh.fsf@codeaurora.org>
Date: Wed, 15 Jan 2020 07:21:35 +0100
In-Reply-To: <87o8v6qhkh.fsf@codeaurora.org> (Kalle Valo's message of "Tue, 14
 Jan 2020 15:43:42 +0200")
Message-ID: <877e1txms0.fsf@suse.de>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/25.3 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200114_222139_080058_89157C00 
X-CRM114-Status: UNSURE (   9.55  )
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "libertas-dev" <libertas-dev-bounces@lists.infradead.org>
Errors-To: libertas-dev-bounces+lists+libertas-dev=lfdr.de@lists.infradead.org

S2FsbGUgVmFsbyA8a3ZhbG9AY29kZWF1cm9yYS5vcmc+IHdyaXRlczoKCj4gTmljb2xhaSBTdGFu
Z2UgPG5zdGFuZ2VAc3VzZS5kZT4gd3JpdGVzOgo+Cj4+IENvbW1pdCBlNWU4ODRiNDI2MzkgKCJs
aWJlcnRhczogRml4IHR3byBidWZmZXIgb3ZlcmZsb3dzIGF0IHBhcnNpbmcgYnNzCj4+IGRlc2Ny
aXB0b3IiKSBpbnRyb2R1Y2VkIGEgYm91bmRzIGNoZWNrIG9uIHRoZSBudW1iZXIgb2Ygc3VwcGxp
ZWQgcmF0ZXMgdG8KPj4gbGJzX2lic3Nfam9pbl9leGlzdGluZygpLgo+Pgo+PiBVbmZvcnR1bmF0
ZWx5LCBpdCBpbnRyb2R1Y2VkIGEgcmV0dXJuIHBhdGggZnJvbSB3aXRoaW4gYSBSQ1UgcmVhZCBz
aWRlCj4+IGNyaXRpY2FsIHNlY3Rpb24gd2l0aG91dCBhIGNvcnJlc3BvbmRpbmcgcmN1X3JlYWRf
dW5sb2NrKCkuIEZpeCB0aGlzLgo+Pgo+PiBGaXhlczogZTVlODg0YjQyNjM5ICgibGliZXJ0YXM6
IEZpeCB0d28gYnVmZmVyIG92ZXJmbG93cyBhdCBwYXJzaW5nIGJzcwo+PiAgICAgICAgICAgICAg
ICAgICAgICAgZGVzY3JpcHRvciIpCj4KPiBUaGlzIHNob3VsZCBiZSBpbiBvbmUgbGluZSwgSSds
bCBmaXggaXQgZHVyaW5nIGNvbW1pdC4KClRoYW5rcyEKCi0tIApTVVNFIFNvZnR3YXJlIFNvbHV0
aW9ucyBHZXJtYW55IEdtYkgsIE1heGZlbGRzdHIuIDUsIDkwNDA5IE7DvHJuYmVyZywgR2VybWFu
eQooSFJCIDM2ODA5LCBBRyBOw7xybmJlcmcpLCBHRjogRmVsaXggSW1lbmTDtnJmZmVyCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaWJlcnRhcy1kZXYg
bWFpbGluZyBsaXN0CmxpYmVydGFzLWRldkBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0
cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGliZXJ0YXMtZGV2Cg==
