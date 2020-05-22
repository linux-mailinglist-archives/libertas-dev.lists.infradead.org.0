Return-Path: <libertas-dev-bounces+lists+libertas-dev=lfdr.de@lists.infradead.org>
X-Original-To: lists+libertas-dev@lfdr.de
Delivered-To: lists+libertas-dev@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BD2E1DE96E
	for <lists+libertas-dev@lfdr.de>; Fri, 22 May 2020 16:47:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uIL6oLKlBou6UhoVlO1K0LRJZLVHeRG2rJSbaS5wr8E=; b=JKRo3VCcv6YZbI
	bgfBVEM+I1sgKFDRZOfO8EEubwvVM5mWf2tPCdP4vKmzZIyFU+JAPQCViCaJaNyLUUdzee8/WA/NP
	ktfGevtJz8i7whEmPgshMIP74I0Zouh/GtHoF0gAn4TGH4P2hr8KZiVtRXISiyQ1YKGiVWftXlgr1
	agQyY+uR7QyLnh8HqdfDABqGhJvIzjXAamcna54yf3hqACCkt0jcEWnhx8BLCZ2n85pzkDSffEXrr
	ZV90GqWmn8b22iVwU4Zeisr8JDfuIiUAcuZVQO/HN3mNSS1e7xyLjymaJP/P6HynafdRLgLLZm90q
	0Jfku0GKd4Gb4/INIOsg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jc8wf-0004Te-JU; Fri, 22 May 2020 14:46:45 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jc8vl-0003kv-9b; Fri, 22 May 2020 14:45:51 +0000
Received: from pali.im (pali.im [31.31.79.79])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 7D03B2054F;
 Fri, 22 May 2020 14:45:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1590158748;
 bh=oq5ZCJlTZiGHXZ4dJp1898bt1twZklmXaQYyrfl6DbI=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=vmqgPZnAGbdGZkJnNBSQtvm5P4tXIor1R1Pr7WCRLRgBOTPbUAUjAK2he5uiCxego
 drlx24+IBOOCbkZ0FQZXlUX7+1xhSyWF7QVA/EDbp8DY1BW6O8OQqdkK71TbvkC8Ko
 kzc3sqKQHGdA/xvwycnU4auvcNvKyXeXMq7du2Io=
Received: by pali.im (Postfix)
 id A1CBE51E; Fri, 22 May 2020 16:45:46 +0200 (CEST)
From: =?UTF-8?q?Pali=20Roh=C3=A1r?= <pali@kernel.org>
To: Ulf Hansson <ulf.hansson@linaro.org>,
	linux-mmc@vger.kernel.org
Subject: [PATCH 03/11] mmc: sdio: Move SDIO IDs from mwifiex driver to common
 include file
Date: Fri, 22 May 2020 16:44:04 +0200
Message-Id: <20200522144412.19712-4-pali@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200522144412.19712-1-pali@kernel.org>
References: <20200522144412.19712-1-pali@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200522_074549_383090_30E44327 
X-CRM114-Status: GOOD (  10.47  )
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

QWRkIF9XTEFOIHN1ZmZpeCB0byBtYWNybyBuYW1lcyBmb3IgY29uc2lzdGVuY3kgd2l0aCBvdGhl
ciBNYXJ2ZWxsIG1hY3Jvcy4KVGhlc2UgSURzIHJlcHJlc2VudHMgd2xhbiBmdW5jdGlvbiBvZiBj
b21ibyBidC93bGFuIGNhcmRzLiBPdGhlciBmdW5jdGlvbnMKb2YgdGhlc2UgY2FyZHMgaGF2ZSBk
aWZmZXJlbnQgSURzLgoKU2lnbmVkLW9mZi1ieTogUGFsaSBSb2jDoXIgPHBhbGlAa2VybmVsLm9y
Zz4KLS0tCiBkcml2ZXJzL25ldC93aXJlbGVzcy9tYXJ2ZWxsL213aWZpZXgvc2Rpby5jIHwgMzgg
KysrKystLS0tLS0tLS0tLS0tLS0tCiBpbmNsdWRlL2xpbnV4L21tYy9zZGlvX2lkcy5oICAgICAg
ICAgICAgICAgIHwgMTAgKysrKysrCiAyIGZpbGVzIGNoYW5nZWQsIDE5IGluc2VydGlvbnMoKyks
IDI5IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvbmV0L3dpcmVsZXNzL21hcnZl
bGwvbXdpZmlleC9zZGlvLmMgYi9kcml2ZXJzL25ldC93aXJlbGVzcy9tYXJ2ZWxsL213aWZpZXgv
c2Rpby5jCmluZGV4IDZhMmRjYjAxY2FmNC4uYTA0Mjk2NTk2MmEyIDEwMDY0NAotLS0gYS9kcml2
ZXJzL25ldC93aXJlbGVzcy9tYXJ2ZWxsL213aWZpZXgvc2Rpby5jCisrKyBiL2RyaXZlcnMvbmV0
L3dpcmVsZXNzL21hcnZlbGwvbXdpZmlleC9zZGlvLmMKQEAgLTQ4MCw0NSArNDgwLDI1IEBAIHN0
YXRpYyB2b2lkIG13aWZpZXhfc2Rpb19jb3JlZHVtcChzdHJ1Y3QgZGV2aWNlICpkZXYpCiAJCXNj
aGVkdWxlX3dvcmsoJmNhcmQtPndvcmspOwogfQogCi0vKiBEZXZpY2UgSUQgZm9yIFNEODc4NiAq
LwotI2RlZmluZSBTRElPX0RFVklDRV9JRF9NQVJWRUxMXzg3ODYgICAoMHg5MTE2KQotLyogRGV2
aWNlIElEIGZvciBTRDg3ODcgKi8KLSNkZWZpbmUgU0RJT19ERVZJQ0VfSURfTUFSVkVMTF84Nzg3
ICAgKDB4OTExOSkKLS8qIERldmljZSBJRCBmb3IgU0Q4Nzk3ICovCi0jZGVmaW5lIFNESU9fREVW
SUNFX0lEX01BUlZFTExfODc5NyAgICgweDkxMjkpCi0vKiBEZXZpY2UgSUQgZm9yIFNEODg5NyAq
LwotI2RlZmluZSBTRElPX0RFVklDRV9JRF9NQVJWRUxMXzg4OTcgICAoMHg5MTJkKQotLyogRGV2
aWNlIElEIGZvciBTRDg4ODcgKi8KLSNkZWZpbmUgU0RJT19ERVZJQ0VfSURfTUFSVkVMTF84ODg3
ICAgKDB4OTEzNSkKLS8qIERldmljZSBJRCBmb3IgU0Q4ODAxICovCi0jZGVmaW5lIFNESU9fREVW
SUNFX0lEX01BUlZFTExfODgwMSAgICgweDkxMzkpCi0vKiBEZXZpY2UgSUQgZm9yIFNEODk3NyAq
LwotI2RlZmluZSBTRElPX0RFVklDRV9JRF9NQVJWRUxMXzg5NzcgICAoMHg5MTQ1KQotLyogRGV2
aWNlIElEIGZvciBTRDg5ODcgKi8KLSNkZWZpbmUgU0RJT19ERVZJQ0VfSURfTUFSVkVMTF84OTg3
ICAgKDB4OTE0OSkKLS8qIERldmljZSBJRCBmb3IgU0Q4OTk3ICovCi0jZGVmaW5lIFNESU9fREVW
SUNFX0lEX01BUlZFTExfODk5NyAgICgweDkxNDEpCi0KLQogLyogV0xBTiBJRHMgKi8KIHN0YXRp
YyBjb25zdCBzdHJ1Y3Qgc2Rpb19kZXZpY2VfaWQgbXdpZmlleF9pZHNbXSA9IHsKLQl7U0RJT19E
RVZJQ0UoU0RJT19WRU5ET1JfSURfTUFSVkVMTCwgU0RJT19ERVZJQ0VfSURfTUFSVkVMTF84Nzg2
KSwKKwl7U0RJT19ERVZJQ0UoU0RJT19WRU5ET1JfSURfTUFSVkVMTCwgU0RJT19ERVZJQ0VfSURf
TUFSVkVMTF84Nzg2X1dMQU4pLAogCQkuZHJpdmVyX2RhdGEgPSAodW5zaWduZWQgbG9uZykgJm13
aWZpZXhfc2Rpb19zZDg3ODZ9LAotCXtTRElPX0RFVklDRShTRElPX1ZFTkRPUl9JRF9NQVJWRUxM
LCBTRElPX0RFVklDRV9JRF9NQVJWRUxMXzg3ODcpLAorCXtTRElPX0RFVklDRShTRElPX1ZFTkRP
Ul9JRF9NQVJWRUxMLCBTRElPX0RFVklDRV9JRF9NQVJWRUxMXzg3ODdfV0xBTiksCiAJCS5kcml2
ZXJfZGF0YSA9ICh1bnNpZ25lZCBsb25nKSAmbXdpZmlleF9zZGlvX3NkODc4N30sCi0Je1NESU9f
REVWSUNFKFNESU9fVkVORE9SX0lEX01BUlZFTEwsIFNESU9fREVWSUNFX0lEX01BUlZFTExfODc5
NyksCisJe1NESU9fREVWSUNFKFNESU9fVkVORE9SX0lEX01BUlZFTEwsIFNESU9fREVWSUNFX0lE
X01BUlZFTExfODc5N19XTEFOKSwKIAkJLmRyaXZlcl9kYXRhID0gKHVuc2lnbmVkIGxvbmcpICZt
d2lmaWV4X3NkaW9fc2Q4Nzk3fSwKLQl7U0RJT19ERVZJQ0UoU0RJT19WRU5ET1JfSURfTUFSVkVM
TCwgU0RJT19ERVZJQ0VfSURfTUFSVkVMTF84ODk3KSwKKwl7U0RJT19ERVZJQ0UoU0RJT19WRU5E
T1JfSURfTUFSVkVMTCwgU0RJT19ERVZJQ0VfSURfTUFSVkVMTF84ODk3X1dMQU4pLAogCQkuZHJp
dmVyX2RhdGEgPSAodW5zaWduZWQgbG9uZykgJm13aWZpZXhfc2Rpb19zZDg4OTd9LAotCXtTRElP
X0RFVklDRShTRElPX1ZFTkRPUl9JRF9NQVJWRUxMLCBTRElPX0RFVklDRV9JRF9NQVJWRUxMXzg4
ODcpLAorCXtTRElPX0RFVklDRShTRElPX1ZFTkRPUl9JRF9NQVJWRUxMLCBTRElPX0RFVklDRV9J
RF9NQVJWRUxMXzg4ODdfV0xBTiksCiAJCS5kcml2ZXJfZGF0YSA9ICh1bnNpZ25lZCBsb25nKSZt
d2lmaWV4X3NkaW9fc2Q4ODg3fSwKLQl7U0RJT19ERVZJQ0UoU0RJT19WRU5ET1JfSURfTUFSVkVM
TCwgU0RJT19ERVZJQ0VfSURfTUFSVkVMTF84ODAxKSwKKwl7U0RJT19ERVZJQ0UoU0RJT19WRU5E
T1JfSURfTUFSVkVMTCwgU0RJT19ERVZJQ0VfSURfTUFSVkVMTF84ODAxX1dMQU4pLAogCQkuZHJp
dmVyX2RhdGEgPSAodW5zaWduZWQgbG9uZykmbXdpZmlleF9zZGlvX3NkODgwMX0sCi0Je1NESU9f
REVWSUNFKFNESU9fVkVORE9SX0lEX01BUlZFTEwsIFNESU9fREVWSUNFX0lEX01BUlZFTExfODk3
NyksCisJe1NESU9fREVWSUNFKFNESU9fVkVORE9SX0lEX01BUlZFTEwsIFNESU9fREVWSUNFX0lE
X01BUlZFTExfODk3N19XTEFOKSwKIAkJLmRyaXZlcl9kYXRhID0gKHVuc2lnbmVkIGxvbmcpJm13
aWZpZXhfc2Rpb19zZDg5Nzd9LAotCXtTRElPX0RFVklDRShTRElPX1ZFTkRPUl9JRF9NQVJWRUxM
LCBTRElPX0RFVklDRV9JRF9NQVJWRUxMXzg5ODcpLAorCXtTRElPX0RFVklDRShTRElPX1ZFTkRP
Ul9JRF9NQVJWRUxMLCBTRElPX0RFVklDRV9JRF9NQVJWRUxMXzg5ODdfV0xBTiksCiAJCS5kcml2
ZXJfZGF0YSA9ICh1bnNpZ25lZCBsb25nKSZtd2lmaWV4X3NkaW9fc2Q4OTg3fSwKLQl7U0RJT19E
RVZJQ0UoU0RJT19WRU5ET1JfSURfTUFSVkVMTCwgU0RJT19ERVZJQ0VfSURfTUFSVkVMTF84OTk3
KSwKKwl7U0RJT19ERVZJQ0UoU0RJT19WRU5ET1JfSURfTUFSVkVMTCwgU0RJT19ERVZJQ0VfSURf
TUFSVkVMTF84OTk3X1dMQU4pLAogCQkuZHJpdmVyX2RhdGEgPSAodW5zaWduZWQgbG9uZykmbXdp
ZmlleF9zZGlvX3NkODk5N30sCiAJe30sCiB9OwpkaWZmIC0tZ2l0IGEvaW5jbHVkZS9saW51eC9t
bWMvc2Rpb19pZHMuaCBiL2luY2x1ZGUvbGludXgvbW1jL3NkaW9faWRzLmgKaW5kZXggN2U5OTJh
MGU2Y2MwLi45MDM2MWVhN2Y1ZWQgMTAwNjQ0Ci0tLSBhL2luY2x1ZGUvbGludXgvbW1jL3NkaW9f
aWRzLmgKKysrIGIvaW5jbHVkZS9saW51eC9tbWMvc2Rpb19pZHMuaApAQCAtNTgsOCArNTgsMTgg
QEAKICNkZWZpbmUgU0RJT19ERVZJQ0VfSURfTUFSVkVMTF9MSUJFUlRBUwkJMHg5MTAzCiAjZGVm
aW5lIFNESU9fREVWSUNFX0lEX01BUlZFTExfODY4OF9XTEFOCTB4OTEwNAogI2RlZmluZSBTRElP
X0RFVklDRV9JRF9NQVJWRUxMXzg2ODhfQlQJCTB4OTEwNQorI2RlZmluZSBTRElPX0RFVklDRV9J
RF9NQVJWRUxMXzg3ODZfV0xBTgkweDkxMTYKKyNkZWZpbmUgU0RJT19ERVZJQ0VfSURfTUFSVkVM
TF84Nzg3X1dMQU4JMHg5MTE5CiAjZGVmaW5lIFNESU9fREVWSUNFX0lEX01BUlZFTExfODc5N19G
MAkJMHg5MTI4CisjZGVmaW5lIFNESU9fREVWSUNFX0lEX01BUlZFTExfODc5N19XTEFOCTB4OTEy
OQorI2RlZmluZSBTRElPX0RFVklDRV9JRF9NQVJWRUxMXzg4OTdfV0xBTgkweDkxMmQKICNkZWZp
bmUgU0RJT19ERVZJQ0VfSURfTUFSVkVMTF84ODg3X0YwCQkweDkxMzQKKyNkZWZpbmUgU0RJT19E
RVZJQ0VfSURfTUFSVkVMTF84ODg3X1dMQU4JMHg5MTM1CisjZGVmaW5lIFNESU9fREVWSUNFX0lE
X01BUlZFTExfODgwMV9XTEFOCTB4OTEzOQorI2RlZmluZSBTRElPX0RFVklDRV9JRF9NQVJWRUxM
Xzg5OTdfRjAJCTB4OTE0MAorI2RlZmluZSBTRElPX0RFVklDRV9JRF9NQVJWRUxMXzg5OTdfV0xB
TgkweDkxNDEKKyNkZWZpbmUgU0RJT19ERVZJQ0VfSURfTUFSVkVMTF84OTc3X1dMQU4JMHg5MTQ1
CisjZGVmaW5lIFNESU9fREVWSUNFX0lEX01BUlZFTExfODk4N19XTEFOCTB4OTE0OQogCiAjZGVm
aW5lIFNESU9fVkVORE9SX0lEX01FRElBVEVLCQkJMHgwMzdhCiAKLS0gCjIuMjAuMQoKCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpYmVydGFzLWRldiBt
YWlsaW5nIGxpc3QKbGliZXJ0YXMtZGV2QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3Rz
LmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saWJlcnRhcy1kZXYK
