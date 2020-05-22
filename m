Return-Path: <libertas-dev-bounces+lists+libertas-dev=lfdr.de@lists.infradead.org>
X-Original-To: lists+libertas-dev@lfdr.de
Delivered-To: lists+libertas-dev@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E3A351DE93C
	for <lists+libertas-dev@lfdr.de>; Fri, 22 May 2020 16:45:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=YvFkUoXZcmRSc42NR9Hdx/07DoMIhR79dLs9q7wMDb8=; b=Q6KLarr4jN8cxk
	xmQeicUBzTOv/jHbP3tIkE6EdMc43pPLnPcyASUWw+oiBbqRFcD3zTB4x/+IzW8XZMjFXm3d6S3il
	pbqUmhuj3XX43YpfKCRoRVWLHDlirG9pGoM1tdQvfYYJnelpLgigPDDhR1JgoXzBpzyskXTsBX3oC
	lDkecxYSIv2T5jAV3zS9MIUIeFlviDbBv0lE4z+G594hY3HBiDTIKODSXcBZsYQVBUR7UEO1pr7ys
	URdpjAPYeP5vnZ4D1wBgyxFC5O+xDMkYEPTnNrw/vmK6L14oSArQ/e67E4j7FsdYjjFNUVFju1kZi
	cRe84pwcgR2de1r/gFzg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jc8vO-0003VE-6M; Fri, 22 May 2020 14:45:26 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jc8vF-0003PX-FG; Fri, 22 May 2020 14:45:18 +0000
Received: from pali.im (pali.im [31.31.79.79])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id A9213204EF;
 Fri, 22 May 2020 14:45:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1590158716;
 bh=jgtLSxW/rFemUDRGqeFehVEu0MdxG9OUPhnEvnFbKXo=;
 h=From:To:Cc:Subject:Date:From;
 b=gfg74FKs4mhp0Qzzg9jCxDSD/GyytTIjGv6siWmpqnDJFXa2okumtbOmzNmz+zRIp
 an1ToAw01OIlj3XAV2Q1zZ5lP4RCLYtL7fsG/NRIfagePkLDfPXqlqbeyObxr6V5Bs
 n0bYQOZXUll0jLzVx7TZ012GMiKrng2FUTFfzjPs=
Received: by pali.im (Postfix)
 id DA32B51E; Fri, 22 May 2020 16:45:13 +0200 (CEST)
From: =?UTF-8?q?Pali=20Roh=C3=A1r?= <pali@kernel.org>
To: Ulf Hansson <ulf.hansson@linaro.org>,
	linux-mmc@vger.kernel.org
Subject: [PATCH 00/11] mmc: sdio: Move SDIO IDs from drivers to common include
 file
Date: Fri, 22 May 2020 16:44:01 +0200
Message-Id: <20200522144412.19712-1-pali@kernel.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200522_074517_533451_B704CBDF 
X-CRM114-Status: UNSURE (   9.35  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: brcm80211-dev-list.pdl@broadcom.com, libertas-dev@lists.infradead.org,
 Xinming Hu <huxinming820@gmail.com>, linux-wireless@vger.kernel.org,
 linux-kernel@vger.kernel.org, Amitkumar Karwar <amitkarwar@gmail.com>,
 =?UTF-8?q?Marek=20Beh=C3=BAn?= <marek.behun@nic.cz>,
 Ganapathi Bhat <ganapathi.bhat@nxp.com>, ath10k@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, brcm80211-dev-list@cypress.com,
 Kalle Valo <kvalo@codeaurora.org>, b43-dev@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "libertas-dev" <libertas-dev-bounces@lists.infradead.org>
Errors-To: libertas-dev-bounces+lists+libertas-dev=lfdr.de@lists.infradead.org

TW9zdCBTRElPIElEcyBhcmUgZGVmaW5lZCBpbiB0aGUgY29tbW9uIGluY2x1ZGUgZmlsZSBsaW51
eC9tbWMvc2Rpb19pZHMuaC4KQnV0IHNvbWUgZHJpdmVycyBkZWZpbmUgSURzIGxvY2FsbHkgb3Ig
ZG8gbm90IHVzZSBleGlzdGluZyBtYWNyb3MgZnJvbSB0aGUKY29tbW9uIGluY2x1ZGUgZmlsZS4K
ClRoaXMgcGF0Y2ggc2VyaWVzIGZpeGVzIGFib3ZlIGluY29uc2lzdGVuY3kuIEl0IGRlZmluZXMg
bWlzc2luZyBtYWNybyBuYW1lcwphbmQgbW92ZXMgYWxsIHJlbWFpbmluZyBTRElPIElEcyBmcm9t
IGRyaXZlcnMgdG8gdGhlIGNvbW1vbiBpbmNsdWRlIGZpbGUuCkFsc28gc29tZSBtYWNybyBuYW1l
cyBhcmUgY2hhbmdlZCB0byBmb2xsb3cgZXhpc3RpbmcgbmFtaW5nIGNvbnZlbnRpb25zLgoKUGFs
aSBSb2jDoXIgKDExKToKICBtbWM6IHNkaW86IEZpeCBtYWNybyBuYW1lIGZvciBNYXJ2ZWxsIGRl
dmljZSB3aXRoIElEIDB4OTEzNAogIG1tYzogc2RpbzogQ2hhbmdlIG1hY3JvIG5hbWVzIGZvciBN
YXJ2ZWxsIDg2ODggbW9kdWxlcwogIG1tYzogc2RpbzogTW92ZSBTRElPIElEcyBmcm9tIG13aWZp
ZXggZHJpdmVyIHRvIGNvbW1vbiBpbmNsdWRlIGZpbGUKICBtbWM6IHNkaW86IE1vdmUgU0RJTyBJ
RHMgZnJvbSBidG1ydmwgZHJpdmVyIHRvIGNvbW1vbiBpbmNsdWRlIGZpbGUKICBtbWM6IHNkaW86
IE1vdmUgU0RJTyBJRHMgZnJvbSBidG10a3NkaW8gZHJpdmVyIHRvIGNvbW1vbiBpbmNsdWRlIGZp
bGUKICBtbWM6IHNkaW86IE1vdmUgU0RJTyBJRHMgZnJvbSBzbXNzZGlvIGRyaXZlciB0byBjb21t
b24gaW5jbHVkZSBmaWxlCiAgbW1jOiBzZGlvOiBNb3ZlIFNESU8gSURzIGZyb20gYXRoNmtsIGRy
aXZlciB0byBjb21tb24gaW5jbHVkZSBmaWxlCiAgbW1jOiBzZGlvOiBNb3ZlIFNESU8gSURzIGZy
b20gYXRoMTBrIGRyaXZlciB0byBjb21tb24gaW5jbHVkZSBmaWxlCiAgbW1jOiBzZGlvOiBNb3Zl
IFNESU8gSURzIGZyb20gYjQzLXNkaW8gZHJpdmVyIHRvIGNvbW1vbiBpbmNsdWRlIGZpbGUKICBt
bWM6IHNkaW86IEZpeCBDeXByZXNzIFNESU8gSURzIG1hY3JvcyBpbiBjb21tb24gaW5jbHVkZSBm
aWxlCiAgbW1jOiBzZGlvOiBTb3J0IGFsbCBTRElPIElEcyBpbiBjb21tb24gaW5jbHVkZSBmaWxl
CgogZHJpdmVycy9ibHVldG9vdGgvYnRtcnZsX3NkaW8uYyAgICAgICAgICAgICAgIHwgMTggKyst
LQogZHJpdmVycy9ibHVldG9vdGgvYnRtdGtzZGlvLmMgICAgICAgICAgICAgICAgIHwgIDQgKy0K
IGRyaXZlcnMvbWVkaWEvbW1jL3NpYW5vL3Ntc3NkaW8uYyAgICAgICAgICAgICB8IDEwICstCiBk
cml2ZXJzL21tYy9jb3JlL3F1aXJrcy5oICAgICAgICAgICAgICAgICAgICAgfCAgMiArLQogZHJp
dmVycy9uZXQvd2lyZWxlc3MvYXRoL2F0aDEway9zZGlvLmMgICAgICAgIHwgMjUgKystLS0KIGRy
aXZlcnMvbmV0L3dpcmVsZXNzL2F0aC9hdGgxMGsvc2Rpby5oICAgICAgICB8ICA4IC0tCiBkcml2
ZXJzL25ldC93aXJlbGVzcy9hdGgvYXRoNmtsL2hpZi5oICAgICAgICAgfCAgNiAtLQogZHJpdmVy
cy9uZXQvd2lyZWxlc3MvYXRoL2F0aDZrbC9zZGlvLmMgICAgICAgIHwgMTcgKystLQogZHJpdmVy
cy9uZXQvd2lyZWxlc3MvYnJvYWRjb20vYjQzL3NkaW8uYyAgICAgIHwgIDQgKy0KIC4uLi9icm9h
ZGNvbS9icmNtODAyMTEvYnJjbWZtYWMvYmNtc2RoLmMgICAgICB8ICA2ICstCiAuLi4vYnJvYWRj
b20vYnJjbTgwMjExL2JyY21mbWFjL3NkaW8uYyAgICAgICAgfCAgNCArLQogLi4uL25ldC93aXJl
bGVzcy9tYXJ2ZWxsL2xpYmVydGFzL2lmX3NkaW8uYyAgIHwgIDIgKy0KIGRyaXZlcnMvbmV0L3dp
cmVsZXNzL21hcnZlbGwvbXdpZmlleC9zZGlvLmMgICB8IDM4ICsrLS0tLS0tCiBpbmNsdWRlL2xp
bnV4L21tYy9zZGlvX2lkcy5oICAgICAgICAgICAgICAgICAgfCA5NCArKysrKysrKysrKysrKy0t
LS0tCiAxNCBmaWxlcyBjaGFuZ2VkLCAxMjAgaW5zZXJ0aW9ucygrKSwgMTE4IGRlbGV0aW9ucygt
KQoKLS0gCjIuMjAuMQoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCmxpYmVydGFzLWRldiBtYWlsaW5nIGxpc3QKbGliZXJ0YXMtZGV2QGxpc3RzLmluZnJh
ZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saWJl
cnRhcy1kZXYK
