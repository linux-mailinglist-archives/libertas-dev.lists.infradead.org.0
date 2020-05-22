Return-Path: <libertas-dev-bounces+lists+libertas-dev=lfdr.de@lists.infradead.org>
X-Original-To: lists+libertas-dev@lfdr.de
Delivered-To: lists+libertas-dev@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E5321DE99B
	for <lists+libertas-dev@lfdr.de>; Fri, 22 May 2020 16:49:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Onw0vlfgU+8mitulKNaivENEgQFWh7Sue/veEZKL/hI=; b=huPD+7uXvxN8cH
	O3TjZ6Qb+iuOtIYNQh7R+Pb97G0tMVLm9A+OjTSJ/4+djSbYLyb2aaIbSqYWBt7UZk509KfZRZDhj
	ZjLLDozNzQCAmyzdX3Z+Jct7kalDpUDXfrAAZMArElf8Izm0N0cMfLBnhRT/rKoPUvWs/t9mvWLWT
	yhjk4wc7n85X996hFYD91qIT/wIh7+lIeChSxqiUPJebKtMR8BUxOMwP26fEmFJpKumZmJUqZbYIc
	+da0RVAxyE3Zlz9jOgF5pTilyHXG3m3OaSfa4s1yq2HOkZmpWIpdpm166ZnEbfPEbTCU1yAT5mpWY
	JunIN4WZDNX+ijHTwZdQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jc8z9-0006vV-VT; Fri, 22 May 2020 14:49:19 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jc8w7-00046F-8d; Fri, 22 May 2020 14:46:15 +0000
Received: from pali.im (pali.im [31.31.79.79])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 10128204EF;
 Fri, 22 May 2020 14:46:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1590158770;
 bh=xL0iNQA61zcd+Iy+CRhN4KujKqVvoopu6rrafJslSYk=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=07CBE6yL8mB6BaiAGeIP8E7u9ppDj+LFMIN/lwK1oOqis9HVXDBWiw0o7lfNXmqHr
 Mx2GhHNv2HSkmgoMWqwlC1uQjSC3ZDKZYHc3LoXCGV1sI14emQwsPiwa1cwjAM/rGf
 j5NOZPFFqtZBYD1I2MUSa3Of1aRp/BZXdQ9CdSzE=
Received: by pali.im (Postfix)
 id 3863B51E; Fri, 22 May 2020 16:46:08 +0200 (CEST)
From: =?UTF-8?q?Pali=20Roh=C3=A1r?= <pali@kernel.org>
To: Ulf Hansson <ulf.hansson@linaro.org>,
	linux-mmc@vger.kernel.org
Subject: [PATCH 11/11] mmc: sdio: Sort all SDIO IDs in common include file
Date: Fri, 22 May 2020 16:44:12 +0200
Message-Id: <20200522144412.19712-12-pali@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200522144412.19712-1-pali@kernel.org>
References: <20200522144412.19712-1-pali@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200522_074611_438442_9C58BE70 
X-CRM114-Status: UNSURE (   8.31  )
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

Rml4IG9yZGVyaW5nIG9mIFNESU8gSURzIHRvIGNvbmZvcm0gdG8gdGhlIGNvbW1lbnQgYWJvdmUs
IHdoaWNoIHNheXMgdmVuZG9yCmZpcnN0LCBkZXZpY2UgbmV4dC4KClNpZ25lZC1vZmYtYnk6IFBh
bGkgUm9ow6FyIDxwYWxpQGtlcm5lbC5vcmc+Ci0tLQogaW5jbHVkZS9saW51eC9tbWMvc2Rpb19p
ZHMuaCB8IDQzICsrKysrKysrKysrKysrKysrKy0tLS0tLS0tLS0tLS0tLS0tLQogMSBmaWxlIGNo
YW5nZWQsIDIyIGluc2VydGlvbnMoKyksIDIxIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2lu
Y2x1ZGUvbGludXgvbW1jL3NkaW9faWRzLmggYi9pbmNsdWRlL2xpbnV4L21tYy9zZGlvX2lkcy5o
CmluZGV4IGIxOTIwMGFlYTU2YS4uMTVlZDhjZTlkMzk0IDEwMDY0NAotLS0gYS9pbmNsdWRlL2xp
bnV4L21tYy9zZGlvX2lkcy5oCisrKyBiL2luY2x1ZGUvbGludXgvbW1jL3NkaW9faWRzLmgKQEAg
LTI1LDkgKzI1LDIzIEBACiAgKiBWZW5kb3JzIGFuZCBkZXZpY2VzLiAgU29ydCBrZXk6IHZlbmRv
ciBmaXJzdCwgZGV2aWNlIG5leHQuCiAgKi8KIAorI2RlZmluZSBTRElPX1ZFTkRPUl9JRF9TVEUJ
CQkweDAwMjAKKyNkZWZpbmUgU0RJT19ERVZJQ0VfSURfU1RFX0NXMTIwMAkJMHgyMjgwCisKKyNk
ZWZpbmUgU0RJT19WRU5ET1JfSURfSU5URUwJCQkweDAwODkKKyNkZWZpbmUgU0RJT19ERVZJQ0Vf
SURfSU5URUxfSVdNQzMyMDBXSU1BWAkweDE0MDIKKyNkZWZpbmUgU0RJT19ERVZJQ0VfSURfSU5U
RUxfSVdNQzMyMDBXSUZJCTB4MTQwMworI2RlZmluZSBTRElPX0RFVklDRV9JRF9JTlRFTF9JV01D
MzIwMFRPUAkweDE0MDQKKyNkZWZpbmUgU0RJT19ERVZJQ0VfSURfSU5URUxfSVdNQzMyMDBHUFMJ
MHgxNDA1CisjZGVmaW5lIFNESU9fREVWSUNFX0lEX0lOVEVMX0lXTUMzMjAwQlQJCTB4MTQwNgor
I2RlZmluZSBTRElPX0RFVklDRV9JRF9JTlRFTF9JV01DMzIwMFdJTUFYXzJHNQkweDE0MDcKKwog
I2RlZmluZSBTRElPX1ZFTkRPUl9JRF9DR1VZUwkJCTB4MDA5MgogI2RlZmluZSBTRElPX0RFVklD
RV9JRF9DR1VZU19FV19DRzExMDJHQwkweDAwMDQKIAorI2RlZmluZSBTRElPX1ZFTkRPUl9JRF9U
SQkJCTB4MDA5NworI2RlZmluZSBTRElPX0RFVklDRV9JRF9USV9XTDEyNzEJCTB4NDA3NgorCiAj
ZGVmaW5lIFNESU9fVkVORE9SX0lEX0FUSEVST1MJCQkweDAyNzEKICNkZWZpbmUgU0RJT19ERVZJ
Q0VfSURfQVRIRVJPU19BUjYwMDNfMDAJMHgwMzAwCiAjZGVmaW5lIFNESU9fREVWSUNFX0lEX0FU
SEVST1NfQVI2MDAzXzAxCTB4MDMwMQpAQCAtNDEsMzQgKzU1LDI2IEBACiAKICNkZWZpbmUgU0RJ
T19WRU5ET1JfSURfQlJPQURDT00JCQkweDAyZDAKICNkZWZpbmUgU0RJT19ERVZJQ0VfSURfQlJP
QURDT01fTklOVEVORE9fV0lJCTB4MDQ0YgotI2RlZmluZSBTRElPX0RFVklDRV9JRF9CUk9BRENP
TV80MzE0MwkJMHhhODg3CiAjZGVmaW5lIFNESU9fREVWSUNFX0lEX0JST0FEQ09NXzQzMjQxCQkw
eDQzMjQKICNkZWZpbmUgU0RJT19ERVZJQ0VfSURfQlJPQURDT01fNDMyOQkJMHg0MzI5CiAjZGVm
aW5lIFNESU9fREVWSUNFX0lEX0JST0FEQ09NXzQzMzAJCTB4NDMzMAogI2RlZmluZSBTRElPX0RF
VklDRV9JRF9CUk9BRENPTV80MzM0CQkweDQzMzQKLSNkZWZpbmUgU0RJT19ERVZJQ0VfSURfQlJP
QURDT01fNDMzNDAJCTB4YTk0YwotI2RlZmluZSBTRElPX0RFVklDRV9JRF9CUk9BRENPTV80MzM0
MQkJMHhhOTRkCiAjZGVmaW5lIFNESU9fREVWSUNFX0lEX0JST0FEQ09NXzQzMzVfNDMzOQkweDQz
MzUKICNkZWZpbmUgU0RJT19ERVZJQ0VfSURfQlJPQURDT01fNDMzOQkJMHg0MzM5Ci0jZGVmaW5l
IFNESU9fREVWSUNFX0lEX0JST0FEQ09NXzQzMzYyCQkweGE5NjIKLSNkZWZpbmUgU0RJT19ERVZJ
Q0VfSURfQlJPQURDT01fNDMzNjQJCTB4YTlhNAotI2RlZmluZSBTRElPX0RFVklDRV9JRF9CUk9B
RENPTV80MzQzMAkJMHhhOWE2CiAjZGVmaW5lIFNESU9fREVWSUNFX0lEX0JST0FEQ09NXzQzNDUJ
CTB4NDM0NQotI2RlZmluZSBTRElPX0RFVklDRV9JRF9CUk9BRENPTV80MzQ1NQkJMHhhOWJmCiAj
ZGVmaW5lIFNESU9fREVWSUNFX0lEX0JST0FEQ09NXzQzNTQJCTB4NDM1NAorI2RlZmluZSBTRElP
X0RFVklDRV9JRF9CUk9BRENPTV9DWVBSRVNTXzg5MzU5CTB4NDM1NQogI2RlZmluZSBTRElPX0RF
VklDRV9JRF9CUk9BRENPTV80MzU2CQkweDQzNTYKICNkZWZpbmUgU0RJT19ERVZJQ0VfSURfQlJP
QURDT01fNDM1OQkJMHg0MzU5CiAjZGVmaW5lIFNESU9fREVWSUNFX0lEX0JST0FEQ09NX0NZUFJF
U1NfNDM3MwkweDQzNzMKICNkZWZpbmUgU0RJT19ERVZJQ0VfSURfQlJPQURDT01fQ1lQUkVTU180
MzAxMgkweGE4MDQKLSNkZWZpbmUgU0RJT19ERVZJQ0VfSURfQlJPQURDT01fQ1lQUkVTU184OTM1
OQkweDQzNTUKLQotI2RlZmluZSBTRElPX1ZFTkRPUl9JRF9JTlRFTAkJCTB4MDA4OQotI2RlZmlu
ZSBTRElPX0RFVklDRV9JRF9JTlRFTF9JV01DMzIwMFdJTUFYCTB4MTQwMgotI2RlZmluZSBTRElP
X0RFVklDRV9JRF9JTlRFTF9JV01DMzIwMFdJRkkJMHgxNDAzCi0jZGVmaW5lIFNESU9fREVWSUNF
X0lEX0lOVEVMX0lXTUMzMjAwVE9QCTB4MTQwNAotI2RlZmluZSBTRElPX0RFVklDRV9JRF9JTlRF
TF9JV01DMzIwMEdQUwkweDE0MDUKLSNkZWZpbmUgU0RJT19ERVZJQ0VfSURfSU5URUxfSVdNQzMy
MDBCVAkJMHgxNDA2Ci0jZGVmaW5lIFNESU9fREVWSUNFX0lEX0lOVEVMX0lXTUMzMjAwV0lNQVhf
Mkc1CTB4MTQwNworI2RlZmluZSBTRElPX0RFVklDRV9JRF9CUk9BRENPTV80MzE0MwkJMHhhODg3
CisjZGVmaW5lIFNESU9fREVWSUNFX0lEX0JST0FEQ09NXzQzMzQwCQkweGE5NGMKKyNkZWZpbmUg
U0RJT19ERVZJQ0VfSURfQlJPQURDT01fNDMzNDEJCTB4YTk0ZAorI2RlZmluZSBTRElPX0RFVklD
RV9JRF9CUk9BRENPTV80MzM2MgkJMHhhOTYyCisjZGVmaW5lIFNESU9fREVWSUNFX0lEX0JST0FE
Q09NXzQzMzY0CQkweGE5YTQKKyNkZWZpbmUgU0RJT19ERVZJQ0VfSURfQlJPQURDT01fNDM0MzAJ
CTB4YTlhNgorI2RlZmluZSBTRElPX0RFVklDRV9JRF9CUk9BRENPTV80MzQ1NQkJMHhhOWJmCiAK
ICNkZWZpbmUgU0RJT19WRU5ET1JfSURfTUFSVkVMTAkJCTB4MDJkZgogI2RlZmluZSBTRElPX0RF
VklDRV9JRF9NQVJWRUxMX0xJQkVSVEFTCQkweDkxMDMKQEAgLTExMiwxMiArMTE4LDcgQEAKICNk
ZWZpbmUgU0RJT19ERVZJQ0VfSURfU0lBTk9fTk9WQV9BMAkJMHgxMTAwCiAjZGVmaW5lIFNESU9f
REVWSUNFX0lEX1NJQU5PX1NURUxMQVIgCQkweDUzNDcKIAotI2RlZmluZSBTRElPX1ZFTkRPUl9J
RF9USQkJCTB4MDA5NwotI2RlZmluZSBTRElPX0RFVklDRV9JRF9USV9XTDEyNzEJCTB4NDA3Ngog
I2RlZmluZSBTRElPX1ZFTkRPUl9JRF9USV9XTDEyNTEJCTB4MTA0YwogI2RlZmluZSBTRElPX0RF
VklDRV9JRF9USV9XTDEyNTEJCTB4OTA2NgogCi0jZGVmaW5lIFNESU9fVkVORE9SX0lEX1NURQkJ
CTB4MDAyMAotI2RlZmluZSBTRElPX0RFVklDRV9JRF9TVEVfQ1cxMjAwCQkweDIyODAKLQogI2Vu
ZGlmIC8qIExJTlVYX01NQ19TRElPX0lEU19IICovCi0tIAoyLjIwLjEKCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaWJlcnRhcy1kZXYgbWFpbGluZyBs
aXN0CmxpYmVydGFzLWRldkBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRl
YWQub3JnL21haWxtYW4vbGlzdGluZm8vbGliZXJ0YXMtZGV2Cg==
