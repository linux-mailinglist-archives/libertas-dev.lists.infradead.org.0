Return-Path: <libertas-dev-bounces+lists+libertas-dev=lfdr.de@lists.infradead.org>
X-Original-To: lists+libertas-dev@lfdr.de
Delivered-To: lists+libertas-dev@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CA6AC1DE98D
	for <lists+libertas-dev@lfdr.de>; Fri, 22 May 2020 16:48:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KUyNAih7OMwqn7c2fpgZhlO5krBWEwO2KVM3ffBJO/o=; b=s2ftcdTfF4KfQP
	htNPCSD58WWnehVjtzw4o7Bc7uZ1UW4YU9qJ1UGOddyYiTQTYAhDxFGq0W64CjhG43bqMz8njKUf7
	JLygDgE6jlTCTGD7P0HMa43xKsXgaK5tdxYBU4/TzThyngv5W1BRTzlYgz1C0jNhfdNHC1w2wMmZ2
	2jIPr3548j843TQWirh0Q1BUBZSc504cDoADM8oTq58v+6wJFeWD5UaeaqUNyGPpUR9m2KPdr2K74
	Xy4n7CecuzPAGaTaxE+ACG27zSCWQ30/dEI6kfPV/5fqmu822Sfu9tna+bGk+1CjivQmU1Dx7T7kY
	5mV5tEsfHz/LA1WZ56dg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jc8yU-0006Il-3S; Fri, 22 May 2020 14:48:38 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jc8vx-0003xD-PF; Fri, 22 May 2020 14:46:04 +0000
Received: from pali.im (pali.im [31.31.79.79])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 60DF52053B;
 Fri, 22 May 2020 14:46:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1590158760;
 bh=8NLVpRbZ9BVGCWTSzZ0LcYnOFxjviPD4hKwEfLQKjkQ=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=iJlmtjMJMGRFGvCBTfXLTroUx4zFYQR1M8BRpOEOKuS/9mTVqF+U2NaRvKIIHitu6
 Qp7FLN7G6reB0jwhmKQNqDJrwTvoN2/ethiYKSKd/XfyyyY6MBImIgktC9mmooYrqa
 NKBQ1W+FcGCCVTQWWH3mSt79AXrAoUquVdBRYR/I=
Received: by pali.im (Postfix)
 id 97FDF51E; Fri, 22 May 2020 16:45:58 +0200 (CEST)
From: =?UTF-8?q?Pali=20Roh=C3=A1r?= <pali@kernel.org>
To: Ulf Hansson <ulf.hansson@linaro.org>,
	linux-mmc@vger.kernel.org
Subject: [PATCH 07/11] mmc: sdio: Move SDIO IDs from ath6kl driver to common
 include file
Date: Fri, 22 May 2020 16:44:08 +0200
Message-Id: <20200522144412.19712-8-pali@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200522144412.19712-1-pali@kernel.org>
References: <20200522144412.19712-1-pali@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200522_074601_910915_91F2515F 
X-CRM114-Status: GOOD (  12.73  )
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

QWxzbyByZXBsYWNlIGdlbmVyaWMgTUFOVUZBQ1RVUkVSIG1hY3JvcyBieSBwcm9wZXIgU0RJTyBJ
RHMgbWFjcm9zLgoKQ2hlY2sgZm9yICJBUjYwMDMgb3IgbGF0ZXIiIGlzIHNsaWdodGx5IG1vZGlm
aWVkIHRvIHVzZSBTRElPIGRldmljZSBJRHMuClRoaXMgYWxsb3dzIHJlbW92YWwgb2YgYWxsIGN1
c3RvbSBNQU5VRkFDVFVSRVIgbWFjcm9zIGZyb20gYXRoNmtsLgoKU2lnbmVkLW9mZi1ieTogUGFs
aSBSb2jDoXIgPHBhbGlAa2VybmVsLm9yZz4KLS0tCiBkcml2ZXJzL25ldC93aXJlbGVzcy9hdGgv
YXRoNmtsL2hpZi5oICB8ICA2IC0tLS0tLQogZHJpdmVycy9uZXQvd2lyZWxlc3MvYXRoL2F0aDZr
bC9zZGlvLmMgfCAxNyArKysrKysrKy0tLS0tLS0tLQogaW5jbHVkZS9saW51eC9tbWMvc2Rpb19p
ZHMuaCAgICAgICAgICAgfCAxMCArKysrKysrKysrCiAzIGZpbGVzIGNoYW5nZWQsIDE4IGluc2Vy
dGlvbnMoKyksIDE1IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvbmV0L3dpcmVs
ZXNzL2F0aC9hdGg2a2wvaGlmLmggYi9kcml2ZXJzL25ldC93aXJlbGVzcy9hdGgvYXRoNmtsL2hp
Zi5oCmluZGV4IGRjNmJkOGNkOWI4My4uYzZkYWZjMzg5MzZhIDEwMDY0NAotLS0gYS9kcml2ZXJz
L25ldC93aXJlbGVzcy9hdGgvYXRoNmtsL2hpZi5oCisrKyBiL2RyaXZlcnMvbmV0L3dpcmVsZXNz
L2F0aC9hdGg2a2wvaGlmLmgKQEAgLTM1LDEyICszNSw2IEBACiAjZGVmaW5lIE1BWF9TQ0FUVEVS
X0VOVFJJRVNfUEVSX1JFUSAgICAgIDE2CiAjZGVmaW5lIE1BWF9TQ0FUVEVSX1JFUV9UUkFOU0ZF
Ul9TSVpFICAgICgzMiAqIDEwMjQpCiAKLSNkZWZpbmUgTUFOVUZBQ1RVUkVSX0lEX0FSNjAwM19C
QVNFICAgICAgICAweDMwMAotI2RlZmluZSBNQU5VRkFDVFVSRVJfSURfQVI2MDA0X0JBU0UgICAg
ICAgIDB4NDAwCi0gICAgLyogU0RJTyBtYW51ZmFjdHVyZXIgSUQgYW5kIENvZGVzICovCi0jZGVm
aW5lIE1BTlVGQUNUVVJFUl9JRF9BVEg2S0xfQkFTRV9NQVNLICAgICAweEZGMDAKLSNkZWZpbmUg
TUFOVUZBQ1RVUkVSX0NPREUgICAgICAgICAgICAgICAgICAweDI3MQkvKiBBdGhlcm9zICovCi0K
IC8qIE1haWxib3ggYWRkcmVzcyBpbiBTRElPIGFkZHJlc3Mgc3BhY2UgKi8KICNkZWZpbmUgSElG
X01CT1hfQkFTRV9BRERSICAgICAgICAgICAgICAgICAweDgwMAogI2RlZmluZSBISUZfTUJPWF9X
SURUSCAgICAgICAgICAgICAgICAgICAgIDB4ODAwCmRpZmYgLS1naXQgYS9kcml2ZXJzL25ldC93
aXJlbGVzcy9hdGgvYXRoNmtsL3NkaW8uYyBiL2RyaXZlcnMvbmV0L3dpcmVsZXNzL2F0aC9hdGg2
a2wvc2Rpby5jCmluZGV4IGJiNTA2ODA1ODBmMy4uNmI1MWEyZGNlYWRjIDEwMDY0NAotLS0gYS9k
cml2ZXJzL25ldC93aXJlbGVzcy9hdGgvYXRoNmtsL3NkaW8uYworKysgYi9kcml2ZXJzL25ldC93
aXJlbGVzcy9hdGgvYXRoNmtsL3NkaW8uYwpAQCAtNzk5LDggKzc5OSw3IEBAIHN0YXRpYyBpbnQg
YXRoNmtsX3NkaW9fY29uZmlnKHN0cnVjdCBhdGg2a2wgKmFyKQogCiAJc2Rpb19jbGFpbV9ob3N0
KGZ1bmMpOwogCi0JaWYgKChhcl9zZGlvLT5pZC0+ZGV2aWNlICYgTUFOVUZBQ1RVUkVSX0lEX0FU
SDZLTF9CQVNFX01BU0spID49Ci0JICAgIE1BTlVGQUNUVVJFUl9JRF9BUjYwMDNfQkFTRSkgewor
CWlmIChhcl9zZGlvLT5pZC0+ZGV2aWNlID49IFNESU9fREVWSUNFX0lEX0FUSEVST1NfQVI2MDAz
XzAwKSB7CiAJCS8qIGVuYWJsZSA0LWJpdCBBU1lOQyBpbnRlcnJ1cHQgb24gQVI2MDAzIG9yIGxh
dGVyICovCiAJCXJldCA9IGF0aDZrbF9zZGlvX2Z1bmMwX2NtZDUyX3dyX2J5dGUoZnVuYy0+Y2Fy
ZCwKIAkJCQkJCUNDQ1JfU0RJT19JUlFfTU9ERV9SRUcsCkBAIC0xNDA5LDEzICsxNDA4LDEzIEBA
IHN0YXRpYyB2b2lkIGF0aDZrbF9zZGlvX3JlbW92ZShzdHJ1Y3Qgc2Rpb19mdW5jICpmdW5jKQog
fQogCiBzdGF0aWMgY29uc3Qgc3RydWN0IHNkaW9fZGV2aWNlX2lkIGF0aDZrbF9zZGlvX2Rldmlj
ZXNbXSA9IHsKLQl7U0RJT19ERVZJQ0UoTUFOVUZBQ1RVUkVSX0NPREUsIChNQU5VRkFDVFVSRVJf
SURfQVI2MDAzX0JBU0UgfCAweDApKX0sCi0Je1NESU9fREVWSUNFKE1BTlVGQUNUVVJFUl9DT0RF
LCAoTUFOVUZBQ1RVUkVSX0lEX0FSNjAwM19CQVNFIHwgMHgxKSl9LAotCXtTRElPX0RFVklDRShN
QU5VRkFDVFVSRVJfQ09ERSwgKE1BTlVGQUNUVVJFUl9JRF9BUjYwMDRfQkFTRSB8IDB4MCkpfSwK
LQl7U0RJT19ERVZJQ0UoTUFOVUZBQ1RVUkVSX0NPREUsIChNQU5VRkFDVFVSRVJfSURfQVI2MDA0
X0JBU0UgfCAweDEpKX0sCi0Je1NESU9fREVWSUNFKE1BTlVGQUNUVVJFUl9DT0RFLCAoTUFOVUZB
Q1RVUkVSX0lEX0FSNjAwNF9CQVNFIHwgMHgyKSl9LAotCXtTRElPX0RFVklDRShNQU5VRkFDVFVS
RVJfQ09ERSwgKE1BTlVGQUNUVVJFUl9JRF9BUjYwMDRfQkFTRSB8IDB4MTgpKX0sCi0Je1NESU9f
REVWSUNFKE1BTlVGQUNUVVJFUl9DT0RFLCAoTUFOVUZBQ1RVUkVSX0lEX0FSNjAwNF9CQVNFIHwg
MHgxOSkpfSwKKwl7U0RJT19ERVZJQ0UoU0RJT19WRU5ET1JfSURfQVRIRVJPUywgU0RJT19ERVZJ
Q0VfSURfQVRIRVJPU19BUjYwMDNfMDApfSwKKwl7U0RJT19ERVZJQ0UoU0RJT19WRU5ET1JfSURf
QVRIRVJPUywgU0RJT19ERVZJQ0VfSURfQVRIRVJPU19BUjYwMDNfMDEpfSwKKwl7U0RJT19ERVZJ
Q0UoU0RJT19WRU5ET1JfSURfQVRIRVJPUywgU0RJT19ERVZJQ0VfSURfQVRIRVJPU19BUjYwMDRf
MDApfSwKKwl7U0RJT19ERVZJQ0UoU0RJT19WRU5ET1JfSURfQVRIRVJPUywgU0RJT19ERVZJQ0Vf
SURfQVRIRVJPU19BUjYwMDRfMDEpfSwKKwl7U0RJT19ERVZJQ0UoU0RJT19WRU5ET1JfSURfQVRI
RVJPUywgU0RJT19ERVZJQ0VfSURfQVRIRVJPU19BUjYwMDRfMDIpfSwKKwl7U0RJT19ERVZJQ0Uo
U0RJT19WRU5ET1JfSURfQVRIRVJPUywgU0RJT19ERVZJQ0VfSURfQVRIRVJPU19BUjYwMDRfMTgp
fSwKKwl7U0RJT19ERVZJQ0UoU0RJT19WRU5ET1JfSURfQVRIRVJPUywgU0RJT19ERVZJQ0VfSURf
QVRIRVJPU19BUjYwMDRfMTkpfSwKIAl7fSwKIH07CiAKZGlmZiAtLWdpdCBhL2luY2x1ZGUvbGlu
dXgvbW1jL3NkaW9faWRzLmggYi9pbmNsdWRlL2xpbnV4L21tYy9zZGlvX2lkcy5oCmluZGV4IDll
YzY3NWE3YWMzNy4uOTViNjdhYjdkMDZhIDEwMDY0NAotLS0gYS9pbmNsdWRlL2xpbnV4L21tYy9z
ZGlvX2lkcy5oCisrKyBiL2luY2x1ZGUvbGludXgvbW1jL3NkaW9faWRzLmgKQEAgLTI0LDYgKzI0
LDE2IEBACiAvKgogICogVmVuZG9ycyBhbmQgZGV2aWNlcy4gIFNvcnQga2V5OiB2ZW5kb3IgZmly
c3QsIGRldmljZSBuZXh0LgogICovCisKKyNkZWZpbmUgU0RJT19WRU5ET1JfSURfQVRIRVJPUwkJ
CTB4MDI3MQorI2RlZmluZSBTRElPX0RFVklDRV9JRF9BVEhFUk9TX0FSNjAwM18wMAkweDAzMDAK
KyNkZWZpbmUgU0RJT19ERVZJQ0VfSURfQVRIRVJPU19BUjYwMDNfMDEJMHgwMzAxCisjZGVmaW5l
IFNESU9fREVWSUNFX0lEX0FUSEVST1NfQVI2MDA0XzAwCTB4MDQwMAorI2RlZmluZSBTRElPX0RF
VklDRV9JRF9BVEhFUk9TX0FSNjAwNF8wMQkweDA0MDEKKyNkZWZpbmUgU0RJT19ERVZJQ0VfSURf
QVRIRVJPU19BUjYwMDRfMDIJMHgwNDAyCisjZGVmaW5lIFNESU9fREVWSUNFX0lEX0FUSEVST1Nf
QVI2MDA0XzE4CTB4MDQxOAorI2RlZmluZSBTRElPX0RFVklDRV9JRF9BVEhFUk9TX0FSNjAwNF8x
OQkweDA0MTkKKwogI2RlZmluZSBTRElPX1ZFTkRPUl9JRF9CUk9BRENPTQkJCTB4MDJkMAogI2Rl
ZmluZSBTRElPX0RFVklDRV9JRF9CUk9BRENPTV80MzE0MwkJMHhhODg3CiAjZGVmaW5lIFNESU9f
REVWSUNFX0lEX0JST0FEQ09NXzQzMjQxCQkweDQzMjQKLS0gCjIuMjAuMQoKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpYmVydGFzLWRldiBtYWlsaW5n
IGxpc3QKbGliZXJ0YXMtZGV2QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJh
ZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saWJlcnRhcy1kZXYK
