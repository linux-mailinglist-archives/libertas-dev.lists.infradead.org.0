Return-Path: <libertas-dev-bounces+lists+libertas-dev=lfdr.de@lists.infradead.org>
X-Original-To: lists+libertas-dev@lfdr.de
Delivered-To: lists+libertas-dev@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 386C31DE94E
	for <lists+libertas-dev@lfdr.de>; Fri, 22 May 2020 16:46:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=42Zk8RPVKq47HMfOkpZolRMEGaZSJfbWyJgFHA41oeg=; b=LUOgeTyaKBe7Og
	ZbomBJtza4bbm1SofuDtpTMu0WyJpWa6Dd4cuXaXhdqhiZv0PBat5+wtwWM/PGfXvFS7+Qr8ticT3
	zQGc4TvVcheuPoDd1OEkZyMuD3Vn7D42sET0AoP7dCck6UJcBbgJHOatARS0767lTMTBuQX5UvxOl
	qVb/J5cqLgdbdEA40VNKhFPT/kQN2iQBUsWGnto2DAI2l6rVQBF4J9At+2QfcQvIjewTzrQsP68Ow
	C811WHUsB3e3ijkL2N3NSFOIETz3SHmQi8qwSB0zaus2F3jJXjGSrOTVLGOsRghQd2x609lqxoG2g
	RIMJwpVb7+zj4vQhVOeA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jc8vq-0003oc-HW; Fri, 22 May 2020 14:45:54 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jc8ve-0003gV-Uy; Fri, 22 May 2020 14:45:44 +0000
Received: from pali.im (pali.im [31.31.79.79])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 7FCF9204EF;
 Fri, 22 May 2020 14:45:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1590158742;
 bh=hRb2VDYaeeagfmMwuXWOO5MTiJ36qdN4nrC0CGCu3qE=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=LrqjOWo/J/e9nqoi7yNeP3vN8U5uj740diXbXu7bs4TXKUlq/Wfi+mfz8xQW2v7va
 UE5FWy17VeukuVoiZIHjzYXyVZvElDUFhPCwCXBb0Lnaf1D+85JNr0lkHuTgn2olws
 Zz2NEZtpFTLaUVIZ0OyqdWrQPDa5G9Esdeu3kbD0=
Received: by pali.im (Postfix)
 id CB79251E; Fri, 22 May 2020 16:45:40 +0200 (CEST)
From: =?UTF-8?q?Pali=20Roh=C3=A1r?= <pali@kernel.org>
To: Ulf Hansson <ulf.hansson@linaro.org>,
	linux-mmc@vger.kernel.org
Subject: [PATCH 01/11] mmc: sdio: Fix macro name for Marvell device with ID
 0x9134
Date: Fri, 22 May 2020 16:44:02 +0200
Message-Id: <20200522144412.19712-2-pali@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200522144412.19712-1-pali@kernel.org>
References: <20200522144412.19712-1-pali@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200522_074543_013296_F3A093E9 
X-CRM114-Status: GOOD (  12.26  )
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

TWFydmVsbCBTRElPIGRldmljZSBJRCAweDkxMzQgaXMgdXNlZCBpbiBTRElPIENvbW1vbiBDSVMg
KENhcmQgSW5mb3JtYXRpb24KU3RydWN0dXJlKSBhbmQgbm90IGluIFNESU8gd2xhbiBmdW5jdGlv
biAod2l0aCBJRCAxKS4gU0RJTyBDb21tb24gQ0lTIGlzCmFjY2Vzc2VkIGJ5IGZ1bmN0aW9uIElE
IDAuCgpTbyBjaGFuZ2UgdGhpcyBtaXNsZWFkaW5nIG1hY3JvIG5hbWUgdG8gU0RJT19ERVZJQ0Vf
SURfTUFSVkVMTF84ODg3X0YwIGFzCml0IGRvZXMgbm90IHJlZmVyIHRvIHdsYW4gZnVuY3Rpb24u
IEl0IHJlZmVycyB0byBmdW5jdGlvbiAwLgoKV2xhbiBtb2R1bGUgb24gdGhpcyBTRElPIGNhcmQg
aXMgYXZhaWxhYmxlIGF0IGZ1bmN0aW9uIElEIDEgYW5kIGlzCmlkZW50aWZpZWQgYnkgZGlmZmVy
ZW50IFNESU8gZGV2aWNlIElEIDB4OTEzNS4gS2VybmVsIHF1aXJrcyBmb3IgU0RJTwpkZXZpY2Vz
IGFyZSBtYXRjaGVkIGFnYWluc3QgZGV2aWNlIElEIGZyb20gU0RJTyBDb21tb24gQ0lTLiBUaGVy
ZWZvcmUKZGV2aWNlIElEIHVzZWQgaW4gcXVpcmsgaXMgY29ycmVjdCwganVzdCBoYXMgbWlzbGVh
ZGluZyBuYW1lLgoKU2lnbmVkLW9mZi1ieTogUGFsaSBSb2jDoXIgPHBhbGlAa2VybmVsLm9yZz4K
LS0tCiBkcml2ZXJzL21tYy9jb3JlL3F1aXJrcy5oICAgIHwgMiArLQogaW5jbHVkZS9saW51eC9t
bWMvc2Rpb19pZHMuaCB8IDIgKy0KIDIgZmlsZXMgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspLCAy
IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvbW1jL2NvcmUvcXVpcmtzLmggYi9k
cml2ZXJzL21tYy9jb3JlL3F1aXJrcy5oCmluZGV4IDNkYmExNWJjY2NlMi4uNDcyZmEyZmRjZjEz
IDEwMDY0NAotLS0gYS9kcml2ZXJzL21tYy9jb3JlL3F1aXJrcy5oCisrKyBiL2RyaXZlcnMvbW1j
L2NvcmUvcXVpcmtzLmgKQEAgLTEzOSw3ICsxMzksNyBAQCBzdGF0aWMgY29uc3Qgc3RydWN0IG1t
Y19maXh1cCBzZGlvX2ZpeHVwX21ldGhvZHNbXSA9IHsKIAlTRElPX0ZJWFVQKFNESU9fVkVORE9S
X0lEX01BUlZFTEwsIFNESU9fREVWSUNFX0lEX01BUlZFTExfODc5N19GMCwKIAkJICAgYWRkX3F1
aXJrLCBNTUNfUVVJUktfQlJPS0VOX0lSUV9QT0xMSU5HKSwKIAotCVNESU9fRklYVVAoU0RJT19W
RU5ET1JfSURfTUFSVkVMTCwgU0RJT19ERVZJQ0VfSURfTUFSVkVMTF84ODg3V0xBTiwKKwlTRElP
X0ZJWFVQKFNESU9fVkVORE9SX0lEX01BUlZFTEwsIFNESU9fREVWSUNFX0lEX01BUlZFTExfODg4
N19GMCwKIAkJICAgYWRkX2xpbWl0X3JhdGVfcXVpcmssIDE1MDAwMDAwMCksCiAKIAlFTkRfRklY
VVAKZGlmZiAtLWdpdCBhL2luY2x1ZGUvbGludXgvbW1jL3NkaW9faWRzLmggYi9pbmNsdWRlL2xp
bnV4L21tYy9zZGlvX2lkcy5oCmluZGV4IDJlOWE2ZTQ2MzRlYi4uOTZmNDNlMGRjNzhmIDEwMDY0
NAotLS0gYS9pbmNsdWRlL2xpbnV4L21tYy9zZGlvX2lkcy5oCisrKyBiL2luY2x1ZGUvbGludXgv
bW1jL3NkaW9faWRzLmgKQEAgLTU5LDcgKzU5LDcgQEAKICNkZWZpbmUgU0RJT19ERVZJQ0VfSURf
TUFSVkVMTF84Njg4V0xBTgkJMHg5MTA0CiAjZGVmaW5lIFNESU9fREVWSUNFX0lEX01BUlZFTExf
ODY4OEJUCQkweDkxMDUKICNkZWZpbmUgU0RJT19ERVZJQ0VfSURfTUFSVkVMTF84Nzk3X0YwCQkw
eDkxMjgKLSNkZWZpbmUgU0RJT19ERVZJQ0VfSURfTUFSVkVMTF84ODg3V0xBTgkweDkxMzQKKyNk
ZWZpbmUgU0RJT19ERVZJQ0VfSURfTUFSVkVMTF84ODg3X0YwCQkweDkxMzQKIAogI2RlZmluZSBT
RElPX1ZFTkRPUl9JRF9NRURJQVRFSwkJCTB4MDM3YQogCi0tIAoyLjIwLjEKCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaWJlcnRhcy1kZXYgbWFpbGlu
ZyBsaXN0CmxpYmVydGFzLWRldkBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZy
YWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGliZXJ0YXMtZGV2Cg==
