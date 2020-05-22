Return-Path: <libertas-dev-bounces+lists+libertas-dev=lfdr.de@lists.infradead.org>
X-Original-To: lists+libertas-dev@lfdr.de
Delivered-To: lists+libertas-dev@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 19EC01DE994
	for <lists+libertas-dev@lfdr.de>; Fri, 22 May 2020 16:49:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PRTYs458YqJz7zdwZwgYliOLf9LkIWrQGTI+lLtYEk4=; b=f+DPuW4zgo1Ojm
	a0ad8xqKPCMr4qr74KTbA137oUf9oKbhXcAvQtI0iogjQJCOmVaqDHiGUIW4OWw33VF6a/nbWsmb/
	tGe0Yvr1ePTMaoJ2Fw+ABComGCV3Osn7KhV2E7vKeaAkm0qnsh+AE5vPlE0aOIvLHorZ1bhflkOUL
	gLZdjaiSLE7Y0pPZXhq9Tk91540DVz2H6TMsoIrE3deX4nXs48pv1dJ8D2OWMwJezhmV1J5/EOHiv
	IAmy1mv31VP6GD3OWakTj/Tpni3VY25eYM+eD2tnZQL99FFa52bZNx8ry97AMaXoSA7NYBwhLa7YS
	nwxPWnjVd3ySibN7k6sA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jc8yn-0006ay-NZ; Fri, 22 May 2020 14:48:57 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jc8w0-0003ze-Jy; Fri, 22 May 2020 14:46:07 +0000
Received: from pali.im (pali.im [31.31.79.79])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 9F7DB204EF;
 Fri, 22 May 2020 14:46:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1590158762;
 bh=ye3nclsR7uSWC4P9+t5adbuuNtCeDZmeeSpzKSyy8xk=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=wkChRlczdOdI08bn6JmrTqB0hHPKi6knDknVJA0wcJzRcFQpPYgwccJ/S6aUPypGY
 qZtidpRlBISxgtHh1AbOHYLfLI0hpayMbnRrGZKGb1OVTdzzwLOdG/XFkttxm3qrEy
 gcMhq8pIIdy7nwnjs5ARl7RK9WFIERyQhkTKXOgc=
Received: by pali.im (Postfix)
 id D613951E; Fri, 22 May 2020 16:46:00 +0200 (CEST)
From: =?UTF-8?q?Pali=20Roh=C3=A1r?= <pali@kernel.org>
To: Ulf Hansson <ulf.hansson@linaro.org>,
	linux-mmc@vger.kernel.org
Subject: [PATCH 08/11] mmc: sdio: Move SDIO IDs from ath10k driver to common
 include file
Date: Fri, 22 May 2020 16:44:09 +0200
Message-Id: <20200522144412.19712-9-pali@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200522144412.19712-1-pali@kernel.org>
References: <20200522144412.19712-1-pali@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200522_074604_852622_8D088BB9 
X-CRM114-Status: GOOD (  12.40  )
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
RHMgbWFjcm9zLgoKQ2hlY2tzIGZvciBkZXZpY2UgSURzIGFyZSBzbGlnaHRseSBtb2RpZmllZCB0
byB1c2UgU0RJTyBkZXZpY2UgSURzLgpUaGlzIGFsbG93cyByZW1vdmFsIG9mIGFsbCBjdXN0b20g
TUFOVUZBQ1RVUkVSIG1hY3JvcyBmcm9tIGF0aDEway4KClNpZ25lZC1vZmYtYnk6IFBhbGkgUm9o
w6FyIDxwYWxpQGtlcm5lbC5vcmc+Ci0tLQogZHJpdmVycy9uZXQvd2lyZWxlc3MvYXRoL2F0aDEw
ay9zZGlvLmMgfCAyNSArKysrKysrKysrLS0tLS0tLS0tLS0tLS0tCiBkcml2ZXJzL25ldC93aXJl
bGVzcy9hdGgvYXRoMTBrL3NkaW8uaCB8ICA4IC0tLS0tLS0tCiBpbmNsdWRlL2xpbnV4L21tYy9z
ZGlvX2lkcy5oICAgICAgICAgICB8ICAyICsrCiAzIGZpbGVzIGNoYW5nZWQsIDEyIGluc2VydGlv
bnMoKyksIDIzIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvbmV0L3dpcmVsZXNz
L2F0aC9hdGgxMGsvc2Rpby5jIGIvZHJpdmVycy9uZXQvd2lyZWxlc3MvYXRoL2F0aDEway9zZGlv
LmMKaW5kZXggMWY3MDliNjVjMjliLi41OWU3MjU1MTUwNDEgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMv
bmV0L3dpcmVsZXNzL2F0aC9hdGgxMGsvc2Rpby5jCisrKyBiL2RyaXZlcnMvbmV0L3dpcmVsZXNz
L2F0aC9hdGgxMGsvc2Rpby5jCkBAIC0xMDgzLDEwICsxMDgzLDEwIEBAIHN0YXRpYyB2b2lkIGF0
aDEwa19zZGlvX3NldF9tYm94X2luZm8oc3RydWN0IGF0aDEwayAqYXIpCiAKIAltYm94X2luZm8t
PmV4dF9pbmZvWzBdLmh0Y19leHRfYWRkciA9IEFUSDEwS19ISUZfTUJPWDBfRVhUX0JBU0VfQURE
UjsKIAotCWRldl9pZF9iYXNlID0gRklFTERfR0VUKFFDQV9NQU5VRkFDVFVSRVJfSURfQkFTRSwg
ZGV2aWNlKTsKLQlkZXZfaWRfY2hpcHJldiA9IEZJRUxEX0dFVChRQ0FfTUFOVUZBQ1RVUkVSX0lE
X1JFVl9NQVNLLCBkZXZpY2UpOworCWRldl9pZF9iYXNlID0gKGRldmljZSAmIDB4MEYwMCk7CisJ
ZGV2X2lkX2NoaXByZXYgPSAoZGV2aWNlICYgMHgwMEZGKTsKIAlzd2l0Y2ggKGRldl9pZF9iYXNl
KSB7Ci0JY2FzZSBRQ0FfTUFOVUZBQ1RVUkVSX0lEX0FSNjAwNV9CQVNFOgorCWNhc2UgKFNESU9f
REVWSUNFX0lEX0FUSEVST1NfQVI2MDA1ICYgMHgwRjAwKToKIAkJaWYgKGRldl9pZF9jaGlwcmV2
IDwgNCkKIAkJCW1ib3hfaW5mby0+ZXh0X2luZm9bMF0uaHRjX2V4dF9zeiA9CiAJCQkJQVRIMTBL
X0hJRl9NQk9YMF9FWFRfV0lEVEg7CkBAIC0xMDk3LDcgKzEwOTcsNyBAQCBzdGF0aWMgdm9pZCBh
dGgxMGtfc2Rpb19zZXRfbWJveF9pbmZvKHN0cnVjdCBhdGgxMGsgKmFyKQogCQkJbWJveF9pbmZv
LT5leHRfaW5mb1swXS5odGNfZXh0X3N6ID0KIAkJCQlBVEgxMEtfSElGX01CT1gwX0VYVF9XSURU
SF9ST01FXzJfMDsKIAkJYnJlYWs7Ci0JY2FzZSBRQ0FfTUFOVUZBQ1RVUkVSX0lEX1FDQTkzNzdf
QkFTRToKKwljYXNlIChTRElPX0RFVklDRV9JRF9BVEhFUk9TX1FDQTkzNzcgJiAweDBGMDApOgog
CQltYm94X2luZm8tPmV4dF9pbmZvWzBdLmh0Y19leHRfc3ogPQogCQkJQVRIMTBLX0hJRl9NQk9Y
MF9FWFRfV0lEVEhfUk9NRV8yXzA7CiAJCWJyZWFrOwpAQCAtMjE4NSwxOSArMjE4NSwxNiBAQCBz
dGF0aWMgaW50IGF0aDEwa19zZGlvX3Byb2JlKHN0cnVjdCBzZGlvX2Z1bmMgKmZ1bmMsCiAJc2ti
X3F1ZXVlX2hlYWRfaW5pdCgmYXJfc2Rpby0+cnhfaGVhZCk7CiAJSU5JVF9XT1JLKCZhcl9zZGlv
LT5hc3luY193b3JrX3J4LCBhdGgxMGtfcnhfaW5kaWNhdGlvbl9hc3luY193b3JrKTsKIAotCWRl
dl9pZF9iYXNlID0gRklFTERfR0VUKFFDQV9NQU5VRkFDVFVSRVJfSURfQkFTRSwgaWQtPmRldmlj
ZSk7Ci0Jc3dpdGNoIChkZXZfaWRfYmFzZSkgewotCWNhc2UgUUNBX01BTlVGQUNUVVJFUl9JRF9B
UjYwMDVfQkFTRToKLQljYXNlIFFDQV9NQU5VRkFDVFVSRVJfSURfUUNBOTM3N19CQVNFOgotCQlh
ci0+ZGV2X2lkID0gUUNBOTM3N18xXzBfREVWSUNFX0lEOwotCQlicmVhazsKLQlkZWZhdWx0Ogor
CWRldl9pZF9iYXNlID0gKGlkLT5kZXZpY2UgJiAweDBGMDApOworCWlmIChkZXZfaWRfYmFzZSAh
PSAoU0RJT19ERVZJQ0VfSURfQVRIRVJPU19BUjYwMDUgJiAweDBGMDApICYmCisJICAgIGRldl9p
ZF9iYXNlICE9IChTRElPX0RFVklDRV9JRF9BVEhFUk9TX1FDQTkzNzcgJiAweDBGMDApKSB7CiAJ
CXJldCA9IC1FTk9ERVY7CiAJCWF0aDEwa19lcnIoYXIsICJ1bnN1cHBvcnRlZCBkZXZpY2UgaWQg
JXUgKDB4JXgpXG4iLAogCQkJICAgZGV2X2lkX2Jhc2UsIGlkLT5kZXZpY2UpOwogCQlnb3RvIGVy
cl9mcmVlX3dxOwogCX0KIAorCWFyLT5kZXZfaWQgPSBRQ0E5Mzc3XzFfMF9ERVZJQ0VfSUQ7CiAJ
YXItPmlkLnZlbmRvciA9IGlkLT52ZW5kb3I7CiAJYXItPmlkLmRldmljZSA9IGlkLT5kZXZpY2U7
CiAKQEAgLTIyNDYsMTAgKzIyNDMsOCBAQCBzdGF0aWMgdm9pZCBhdGgxMGtfc2Rpb19yZW1vdmUo
c3RydWN0IHNkaW9fZnVuYyAqZnVuYykKIH0KIAogc3RhdGljIGNvbnN0IHN0cnVjdCBzZGlvX2Rl
dmljZV9pZCBhdGgxMGtfc2Rpb19kZXZpY2VzW10gPSB7Ci0Je1NESU9fREVWSUNFKFFDQV9NQU5V
RkFDVFVSRVJfQ09ERSwKLQkJICAgICAoUUNBX1NESU9fSURfQVI2MDA1X0JBU0UgfCAweEEpKX0s
Ci0Je1NESU9fREVWSUNFKFFDQV9NQU5VRkFDVFVSRVJfQ09ERSwKLQkJICAgICAoUUNBX1NESU9f
SURfUUNBOTM3N19CQVNFIHwgMHgxKSl9LAorCXtTRElPX0RFVklDRShTRElPX1ZFTkRPUl9JRF9B
VEhFUk9TLCBTRElPX0RFVklDRV9JRF9BVEhFUk9TX0FSNjAwNSl9LAorCXtTRElPX0RFVklDRShT
RElPX1ZFTkRPUl9JRF9BVEhFUk9TLCBTRElPX0RFVklDRV9JRF9BVEhFUk9TX1FDQTkzNzcpfSwK
IAl7fSwKIH07CiAKZGlmZiAtLWdpdCBhL2RyaXZlcnMvbmV0L3dpcmVsZXNzL2F0aC9hdGgxMGsv
c2Rpby5oIGIvZHJpdmVycy9uZXQvd2lyZWxlc3MvYXRoL2F0aDEway9zZGlvLmgKaW5kZXggMzMx
OTVmNDlhY2FiLi5lODk1MWY5Y2RiNWYgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvbmV0L3dpcmVsZXNz
L2F0aC9hdGgxMGsvc2Rpby5oCisrKyBiL2RyaXZlcnMvbmV0L3dpcmVsZXNzL2F0aC9hdGgxMGsv
c2Rpby5oCkBAIC0xMCwxNCArMTAsNiBAQAogCiAjZGVmaW5lIEFUSDEwS19ISUZfTUJPWF9CTE9D
S19TSVpFICAgICAgICAgICAgICAyNTYKIAotI2RlZmluZSBRQ0FfTUFOVUZBQ1RVUkVSX0lEX0JB
U0UgICAgICAgICAgICAgICAgR0VOTUFTSygxMSwgOCkKLSNkZWZpbmUgUUNBX01BTlVGQUNUVVJF
Ul9JRF9BUjYwMDVfQkFTRSAgICAgICAgIDB4NQotI2RlZmluZSBRQ0FfTUFOVUZBQ1RVUkVSX0lE
X1FDQTkzNzdfQkFTRSAgICAgICAgMHg3Ci0jZGVmaW5lIFFDQV9TRElPX0lEX0FSNjAwNV9CQVNF
ICAgICAgICAgICAgICAgICAweDUwMAotI2RlZmluZSBRQ0FfU0RJT19JRF9RQ0E5Mzc3X0JBU0Ug
ICAgICAgICAgICAgICAgMHg3MDAKLSNkZWZpbmUgUUNBX01BTlVGQUNUVVJFUl9JRF9SRVZfTUFT
SyAgICAgICAgICAgIDB4MDBGRgotI2RlZmluZSBRQ0FfTUFOVUZBQ1RVUkVSX0NPREUgICAgICAg
ICAgICAgICAgICAgMHgyNzEgLyogUXVhbGNvbW0vQXRoZXJvcyAqLwotCiAjZGVmaW5lIEFUSDEw
S19TRElPX01BWF9CVUZGRVJfU0laRSAgICAgICAgICAgICA0MDk2IC8qVW5zdXJlIG9mIHRoaXMg
Y29uc3RhbnQqLwogCiAvKiBNYWlsYm94IGFkZHJlc3MgaW4gU0RJTyBhZGRyZXNzIHNwYWNlICov
CmRpZmYgLS1naXQgYS9pbmNsdWRlL2xpbnV4L21tYy9zZGlvX2lkcy5oIGIvaW5jbHVkZS9saW51
eC9tbWMvc2Rpb19pZHMuaAppbmRleCA5NWI2N2FiN2QwNmEuLjI4OTRmNzczOWFjYyAxMDA2NDQK
LS0tIGEvaW5jbHVkZS9saW51eC9tbWMvc2Rpb19pZHMuaAorKysgYi9pbmNsdWRlL2xpbnV4L21t
Yy9zZGlvX2lkcy5oCkBAIC0zMyw2ICszMyw4IEBACiAjZGVmaW5lIFNESU9fREVWSUNFX0lEX0FU
SEVST1NfQVI2MDA0XzAyCTB4MDQwMgogI2RlZmluZSBTRElPX0RFVklDRV9JRF9BVEhFUk9TX0FS
NjAwNF8xOAkweDA0MTgKICNkZWZpbmUgU0RJT19ERVZJQ0VfSURfQVRIRVJPU19BUjYwMDRfMTkJ
MHgwNDE5CisjZGVmaW5lIFNESU9fREVWSUNFX0lEX0FUSEVST1NfQVI2MDA1CQkweDA1MEEKKyNk
ZWZpbmUgU0RJT19ERVZJQ0VfSURfQVRIRVJPU19RQ0E5Mzc3CQkweDA3MDEKIAogI2RlZmluZSBT
RElPX1ZFTkRPUl9JRF9CUk9BRENPTQkJCTB4MDJkMAogI2RlZmluZSBTRElPX0RFVklDRV9JRF9C
Uk9BRENPTV80MzE0MwkJMHhhODg3Ci0tIAoyLjIwLjEKCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpsaWJlcnRhcy1kZXYgbWFpbGluZyBsaXN0CmxpYmVy
dGFzLWRldkBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21h
aWxtYW4vbGlzdGluZm8vbGliZXJ0YXMtZGV2Cg==
