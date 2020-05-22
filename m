Return-Path: <libertas-dev-bounces+lists+libertas-dev=lfdr.de@lists.infradead.org>
X-Original-To: lists+libertas-dev@lfdr.de
Delivered-To: lists+libertas-dev@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BCCA11DE997
	for <lists+libertas-dev@lfdr.de>; Fri, 22 May 2020 16:49:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QOYpgC2RwBTGIS4+bKpI0+4tXuQoeMwc1IudX7I6hJI=; b=jjKo+EsepdBFCE
	Kic4Bh8Vi6w8eoULZD86UN1VTz7rVGTuae2G14CtQAf7VZikuxG/0ks+qYp9CZgm9P7gPhFdSPMcp
	WEXxuPmNzyMpJDntodxQYqRTjoBQJlUXZLkjfNqiYfLY7FvGCXeC/0to4l/fpT0EaLvhkMD5HFf1w
	T+qdaGGVm0orLEHWj4o49LkIOHyXrPjZQsjeRZFzHwq5CKi2ljJKK0rX/srRaHXSQQOq8LCnnj+8b
	1qFHBL+cqbN95vjiq+llw4zMhMT4U3JVg7GUg9fOPBTWknVHq+edxZ/PrtZN3W+k9NGQAWvsDKpY3
	NJnjNR5KoT6FCxQi7W4w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jc8z0-0006ly-D9; Fri, 22 May 2020 14:49:10 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jc8w4-00043r-6s; Fri, 22 May 2020 14:46:10 +0000
Received: from pali.im (pali.im [31.31.79.79])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 600162054F;
 Fri, 22 May 2020 14:46:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1590158767;
 bh=TJohxP7W9jg/tdaIFO6IgAHGCrICOTbIc/uilKm/8Sk=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=0tmb1v0XU35+tUH6DDmz3g8ydeL47t0zXZM93MTVX34VGrqnEHSD3SE4WgZUUui0R
 kwXHdMPvtB16hmvqI0wplZanV9HIRyrBokqMVm1qcACmcMEB5o6NPmIFpP6ucuef3u
 gcSDdyYJtjWyI+jvGmpKI5HpNSfQZ4W9GmgxnEkA=
Received: by pali.im (Postfix)
 id 99D2751E; Fri, 22 May 2020 16:46:05 +0200 (CEST)
From: =?UTF-8?q?Pali=20Roh=C3=A1r?= <pali@kernel.org>
To: Ulf Hansson <ulf.hansson@linaro.org>,
	linux-mmc@vger.kernel.org
Subject: [PATCH 10/11] mmc: sdio: Fix Cypress SDIO IDs macros in common
 include file
Date: Fri, 22 May 2020 16:44:11 +0200
Message-Id: <20200522144412.19712-11-pali@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200522144412.19712-1-pali@kernel.org>
References: <20200522144412.19712-1-pali@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200522_074608_585226_852FB49B 
X-CRM114-Status: GOOD (  11.83  )
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

QWxsIG1hY3JvIG5hbWVzIGZvciBTRElPIGRldmljZSBJRHMgYXJlIHByZWZpeGVkIGJ5IHZlbmRv
ciBuYW1lIHRvIHdoaWNoCmRldmljZSBJRCBiZWxvbmdzLiBTbyBmb3IgY29uc2lzdGVuY3kgYWRk
IEJyb2FkY29tIHN0cmluZyB2ZW5kb3IgcHJlZml4IHRvCmFsbCBDeXByZXNzIG1hY3JvIG5hbWVz
IGFzIHRoZXkgYmVsb25nIHRvIFNESU8gQnJvYWRjb20gdmVuZG9yIElELgoKQ2hhbmdlIGFsc28g
Q3lwcmVzcyA0MzAxMiB2YWx1ZSBmcm9tIGRlY2ltYWwgZG8gaGV4YWRlY2ltYWwgbm90YXRpb24g
dG8gYmUKY29uc2lzdGVudCB3aXRoIGFsbCBvdGhlciB2YWx1ZXMuCgpTaWduZWQtb2ZmLWJ5OiBQ
YWxpIFJvaMOhciA8cGFsaUBrZXJuZWwub3JnPgotLS0KIGRyaXZlcnMvbmV0L3dpcmVsZXNzL2Jy
b2FkY29tL2JyY204MDIxMS9icmNtZm1hYy9iY21zZGguYyB8IDYgKysrLS0tCiBkcml2ZXJzL25l
dC93aXJlbGVzcy9icm9hZGNvbS9icmNtODAyMTEvYnJjbWZtYWMvc2Rpby5jICAgfCA0ICsrLS0K
IGluY2x1ZGUvbGludXgvbW1jL3NkaW9faWRzLmggICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICB8IDYgKysrLS0tCiAzIGZpbGVzIGNoYW5nZWQsIDggaW5zZXJ0aW9ucygrKSwgOCBkZWxldGlv
bnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL25ldC93aXJlbGVzcy9icm9hZGNvbS9icmNtODAy
MTEvYnJjbWZtYWMvYmNtc2RoLmMgYi9kcml2ZXJzL25ldC93aXJlbGVzcy9icm9hZGNvbS9icmNt
ODAyMTEvYnJjbWZtYWMvYmNtc2RoLmMKaW5kZXggYjY4NGE1YjZkOTA0Li5hMWZkYjYxOGNmMTQg
MTAwNjQ0Ci0tLSBhL2RyaXZlcnMvbmV0L3dpcmVsZXNzL2Jyb2FkY29tL2JyY204MDIxMS9icmNt
Zm1hYy9iY21zZGguYworKysgYi9kcml2ZXJzL25ldC93aXJlbGVzcy9icm9hZGNvbS9icmNtODAy
MTEvYnJjbWZtYWMvYmNtc2RoLmMKQEAgLTk3MCw5ICs5NzAsOSBAQCBzdGF0aWMgY29uc3Qgc3Ry
dWN0IHNkaW9fZGV2aWNlX2lkIGJyY21mX3NkbW1jX2lkc1tdID0gewogCUJSQ01GX1NESU9fREVW
SUNFKFNESU9fREVWSUNFX0lEX0JST0FEQ09NXzQzNTQpLAogCUJSQ01GX1NESU9fREVWSUNFKFNE
SU9fREVWSUNFX0lEX0JST0FEQ09NXzQzNTYpLAogCUJSQ01GX1NESU9fREVWSUNFKFNESU9fREVW
SUNFX0lEX0JST0FEQ09NXzQzNTkpLAotCUJSQ01GX1NESU9fREVWSUNFKFNESU9fREVWSUNFX0lE
X0NZUFJFU1NfNDM3MyksCi0JQlJDTUZfU0RJT19ERVZJQ0UoU0RJT19ERVZJQ0VfSURfQ1lQUkVT
U180MzAxMiksCi0JQlJDTUZfU0RJT19ERVZJQ0UoU0RJT19ERVZJQ0VfSURfQ1lQUkVTU184OTM1
OSksCisJQlJDTUZfU0RJT19ERVZJQ0UoU0RJT19ERVZJQ0VfSURfQlJPQURDT01fQ1lQUkVTU180
MzczKSwKKwlCUkNNRl9TRElPX0RFVklDRShTRElPX0RFVklDRV9JRF9CUk9BRENPTV9DWVBSRVNT
XzQzMDEyKSwKKwlCUkNNRl9TRElPX0RFVklDRShTRElPX0RFVklDRV9JRF9CUk9BRENPTV9DWVBS
RVNTXzg5MzU5KSwKIAl7IC8qIGVuZDogYWxsIHplcm9lcyAqLyB9CiB9OwogTU9EVUxFX0RFVklD
RV9UQUJMRShzZGlvLCBicmNtZl9zZG1tY19pZHMpOwpkaWZmIC0tZ2l0IGEvZHJpdmVycy9uZXQv
d2lyZWxlc3MvYnJvYWRjb20vYnJjbTgwMjExL2JyY21mbWFjL3NkaW8uYyBiL2RyaXZlcnMvbmV0
L3dpcmVsZXNzL2Jyb2FkY29tL2JyY204MDIxMS9icmNtZm1hYy9zZGlvLmMKaW5kZXggM2EwODI1
MmYxYTUzLi4xYzk1NjE2NjVhNjcgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvbmV0L3dpcmVsZXNzL2Jy
b2FkY29tL2JyY204MDIxMS9icmNtZm1hYy9zZGlvLmMKKysrIGIvZHJpdmVycy9uZXQvd2lyZWxl
c3MvYnJvYWRjb20vYnJjbTgwMjExL2JyY21mbWFjL3NkaW8uYwpAQCAtNDE4Nyw3ICs0MTg3LDcg
QEAgc3RhdGljIHZvaWQgYnJjbWZfc2Rpb19maXJtd2FyZV9jYWxsYmFjayhzdHJ1Y3QgZGV2aWNl
ICpkZXYsIGludCBlcnIsCiAJCQkJICAgYnVzLT5ob3N0aW50bWFzaywgTlVMTCk7CiAKIAkJc3dp
dGNoIChzZGlvZC0+ZnVuYzEtPmRldmljZSkgewotCQljYXNlIFNESU9fREVWSUNFX0lEX0NZUFJF
U1NfNDM3MzoKKwkJY2FzZSBTRElPX0RFVklDRV9JRF9CUk9BRENPTV9DWVBSRVNTXzQzNzM6CiAJ
CQlicmNtZl9kYmcoSU5GTywgInNldCBGMiB3YXRlcm1hcmsgdG8gMHgleCo0IGJ5dGVzXG4iLAog
CQkJCSAgQ1lfNDM3M19GMl9XQVRFUk1BUkspOwogCQkJYnJjbWZfc2Rpb2Rfd3JpdGViKHNkaW9k
LCBTQlNESU9fV0FURVJNQVJLLApAQCAtNDIwMSw3ICs0MjAxLDcgQEAgc3RhdGljIHZvaWQgYnJj
bWZfc2Rpb19maXJtd2FyZV9jYWxsYmFjayhzdHJ1Y3QgZGV2aWNlICpkZXYsIGludCBlcnIsCiAJ
CQkJCSAgIENZXzQzNzNfRjJfV0FURVJNQVJLIHwKIAkJCQkJICAgU0JTRElPX01FU0JVU1lDVFJM
X0VOQUIsICZlcnIpOwogCQkJYnJlYWs7Ci0JCWNhc2UgU0RJT19ERVZJQ0VfSURfQ1lQUkVTU180
MzAxMjoKKwkJY2FzZSBTRElPX0RFVklDRV9JRF9CUk9BRENPTV9DWVBSRVNTXzQzMDEyOgogCQkJ
YnJjbWZfZGJnKElORk8sICJzZXQgRjIgd2F0ZXJtYXJrIHRvIDB4JXgqNCBieXRlc1xuIiwKIAkJ
CQkgIENZXzQzMDEyX0YyX1dBVEVSTUFSSyk7CiAJCQlicmNtZl9zZGlvZF93cml0ZWIoc2Rpb2Qs
IFNCU0RJT19XQVRFUk1BUkssCmRpZmYgLS1naXQgYS9pbmNsdWRlL2xpbnV4L21tYy9zZGlvX2lk
cy5oIGIvaW5jbHVkZS9saW51eC9tbWMvc2Rpb19pZHMuaAppbmRleCA4ZTdhMDY4M2I5MjcuLmIx
OTIwMGFlYTU2YSAxMDA2NDQKLS0tIGEvaW5jbHVkZS9saW51eC9tbWMvc2Rpb19pZHMuaAorKysg
Yi9pbmNsdWRlL2xpbnV4L21tYy9zZGlvX2lkcy5oCkBAIC01OCw5ICs1OCw5IEBACiAjZGVmaW5l
IFNESU9fREVWSUNFX0lEX0JST0FEQ09NXzQzNTQJCTB4NDM1NAogI2RlZmluZSBTRElPX0RFVklD
RV9JRF9CUk9BRENPTV80MzU2CQkweDQzNTYKICNkZWZpbmUgU0RJT19ERVZJQ0VfSURfQlJPQURD
T01fNDM1OQkJMHg0MzU5Ci0jZGVmaW5lIFNESU9fREVWSUNFX0lEX0NZUFJFU1NfNDM3MwkJMHg0
MzczCi0jZGVmaW5lIFNESU9fREVWSUNFX0lEX0NZUFJFU1NfNDMwMTIJCTQzMDEyCi0jZGVmaW5l
IFNESU9fREVWSUNFX0lEX0NZUFJFU1NfODkzNTkJCTB4NDM1NQorI2RlZmluZSBTRElPX0RFVklD
RV9JRF9CUk9BRENPTV9DWVBSRVNTXzQzNzMJMHg0MzczCisjZGVmaW5lIFNESU9fREVWSUNFX0lE
X0JST0FEQ09NX0NZUFJFU1NfNDMwMTIJMHhhODA0CisjZGVmaW5lIFNESU9fREVWSUNFX0lEX0JS
T0FEQ09NX0NZUFJFU1NfODkzNTkJMHg0MzU1CiAKICNkZWZpbmUgU0RJT19WRU5ET1JfSURfSU5U
RUwJCQkweDAwODkKICNkZWZpbmUgU0RJT19ERVZJQ0VfSURfSU5URUxfSVdNQzMyMDBXSU1BWAkw
eDE0MDIKLS0gCjIuMjAuMQoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCmxpYmVydGFzLWRldiBtYWlsaW5nIGxpc3QKbGliZXJ0YXMtZGV2QGxpc3RzLmlu
ZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9s
aWJlcnRhcy1kZXYK
