Return-Path: <libertas-dev-bounces+lists+libertas-dev=lfdr.de@lists.infradead.org>
X-Original-To: lists+libertas-dev@lfdr.de
Delivered-To: lists+libertas-dev@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 58BCA1E0BF5
	for <lists+libertas-dev@lfdr.de>; Mon, 25 May 2020 12:38:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1G2/+Erb/eNz3KQN50oQ+xSzbvsRW6mnMgrdEeg/Wko=; b=tUpvkAkMk3fjEK
	RgG89PjCJ5IwqQCrJ0SRs67kDcn2LgoFBVvYzbTsjd6nlTd1cnGcWnHb3zQvTsneV0Ij2XiGtbzrI
	bP167sHIwpPvKIvVNVSYecqcF3LTuPXAzoCzjiKYiSwJ5J8sveVlGYod9Dnq89dmVrwbjIZOg9rg0
	4+tWehKT09kduHn0MWF+Cl38QJSObwBX19Kz9Qe6WxxchZ8m9UQ81yYG3bMuLVFpRzhg32YFA6cbk
	OJEjXcCxvJC+uzJ+cLYyY9y64hG1gxxewVFIAX5lIiPtI26LINoeoijw+RvnMhHBBEXYxkrGsxSJc
	jzFJmfkKyjz7MI50v1Dw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdAV5-0007nQ-Bj; Mon, 25 May 2020 10:38:31 +0000
Received: from mail26.static.mailgun.info ([104.130.122.26])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdAUu-0007gP-Q0
 for libertas-dev@lists.infradead.org; Mon, 25 May 2020 10:38:23 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1590403102; h=Content-Transfer-Encoding: Content-Type:
 MIME-Version: Message-ID: In-Reply-To: Date: References: Subject: Cc:
 To: From: Sender; bh=p5zd7PVv8BmxBXahwLnGClMRyyZ7c+gCoFns6BFp21Y=;
 b=LUAB+Ybsbd1LOkffNwXB7ub90kpwG57cOmwt6ZdjznpwxoyxuEsF/ackxeJtt1jCXdIHub6N
 D9KHu3W0MueNaxJNtX7oGQWUMb8kjU4NTGdJEc4WKN812mTr3i6PtAcDG5P0QHTuQ0Gn2+jN
 9AxQwZ6tjrDew2GxaU6hfr/3zZ4=
X-Mailgun-Sending-Ip: 104.130.122.26
X-Mailgun-Sid: WyJhMDJjNSIsICJsaWJlcnRhcy1kZXZAbGlzdHMuaW5mcmFkZWFkLm9yZyIsICJiZTllNGEiXQ==
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171]) by
 smtp-out-n03.prod.us-east-1.postgun.com with SMTP id
 5ecba0178cd231c403f8e0c3 (version=TLS1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256); Mon, 25 May 2020 10:38:15
 GMT
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id 7798BC43387; Mon, 25 May 2020 10:38:14 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED,SPF_NONE
 autolearn=unavailable autolearn_force=no version=3.4.0
Received: from potku.adurom.net (88-114-240-156.elisa-laajakaista.fi
 [88.114.240.156])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: kvalo)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id E2B64C433C6;
 Mon, 25 May 2020 10:38:09 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org E2B64C433C6
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
From: Kalle Valo <kvalo@codeaurora.org>
To: Pali =?utf-8?Q?Roh=C3=A1r?= <pali@kernel.org>
Subject: Re: [PATCH 03/11] mmc: sdio: Move SDIO IDs from mwifiex driver to
 common include file
References: <20200522144412.19712-1-pali@kernel.org>
 <20200522144412.19712-4-pali@kernel.org>
Date: Mon, 25 May 2020 13:38:07 +0300
In-Reply-To: <20200522144412.19712-4-pali@kernel.org> ("Pali
 \=\?utf-8\?Q\?Roh\?\= \=\?utf-8\?Q\?\=C3\=A1r\=22's\?\= message
 of "Fri, 22 May 2020 16:44:04 +0200")
Message-ID: <87ftbo9u5s.fsf@codeaurora.org>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/24.5 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200525_033822_298217_ED771350 
X-CRM114-Status: UNSURE (   9.70  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [104.130.122.26 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [104.130.122.26 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: brcm80211-dev-list.pdl@broadcom.com, Ulf Hansson <ulf.hansson@linaro.org>,
 libertas-dev@lists.infradead.org, Xinming Hu <huxinming820@gmail.com>,
 linux-wireless@vger.kernel.org, linux-mmc@vger.kernel.org,
 linux-kernel@vger.kernel.org, Amitkumar Karwar <amitkarwar@gmail.com>,
 Marek =?utf-8?Q?Beh=C3=BAn?= <marek.behun@nic.cz>,
 Ganapathi Bhat <ganapathi.bhat@nxp.com>, ath10k@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, brcm80211-dev-list@cypress.com,
 b43-dev@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "libertas-dev" <libertas-dev-bounces@lists.infradead.org>
Errors-To: libertas-dev-bounces+lists+libertas-dev=lfdr.de@lists.infradead.org

UGFsaSBSb2jDoXIgPHBhbGlAa2VybmVsLm9yZz4gd3JpdGVzOgoKPiBBZGQgX1dMQU4gc3VmZml4
IHRvIG1hY3JvIG5hbWVzIGZvciBjb25zaXN0ZW5jeSB3aXRoIG90aGVyIE1hcnZlbGwgbWFjcm9z
Lgo+IFRoZXNlIElEcyByZXByZXNlbnRzIHdsYW4gZnVuY3Rpb24gb2YgY29tYm8gYnQvd2xhbiBj
YXJkcy4gT3RoZXIgZnVuY3Rpb25zCj4gb2YgdGhlc2UgY2FyZHMgaGF2ZSBkaWZmZXJlbnQgSURz
Lgo+Cj4gU2lnbmVkLW9mZi1ieTogUGFsaSBSb2jDoXIgPHBhbGlAa2VybmVsLm9yZz4KCkFja2Vk
LWJ5OiBLYWxsZSBWYWxvIDxrdmFsb0Bjb2RlYXVyb3JhLm9yZz4KCi0tIApodHRwczovL3dpcmVs
ZXNzLndpa2kua2VybmVsLm9yZy9lbi9kZXZlbG9wZXJzL2RvY3VtZW50YXRpb24vc3VibWl0dGlu
Z3BhdGNoZXMKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CmxpYmVydGFzLWRldiBtYWlsaW5nIGxpc3QKbGliZXJ0YXMtZGV2QGxpc3RzLmluZnJhZGVhZC5v
cmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saWJlcnRhcy1k
ZXYK
