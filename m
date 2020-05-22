Return-Path: <libertas-dev-bounces+lists+libertas-dev=lfdr.de@lists.infradead.org>
X-Original-To: lists+libertas-dev@lfdr.de
Delivered-To: lists+libertas-dev@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AEB991DE978
	for <lists+libertas-dev@lfdr.de>; Fri, 22 May 2020 16:47:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=k2fp/4BJ86ywwSZmbnfevOe1sKMr4JD9mHKs3i9TrVs=; b=cQ53Ivwa3k2QWY
	eNUf+aCiEZsxLj275FrMZjxqSVmcd6qg9ve41+/duCkYI7sh1sJuQ0n2NUJcP8zs2kkwsDyrV/MAV
	38eyx7MCgqloULovM//LTCwH4hIlAVddMlcsqmM6Qe+pX9IdopK7bJ3AZjdvH76eXiNTllfp7mxPu
	7gJ3RqgzOsRCY2GWjadd8IIpwZySLbdMUi6Mka95Sdv805sOx1NsFJv7vscOzx8ggvHh/ztuJ6sJ5
	JS5MTwzxEyfnI4b8IvWKGRuwmZXLxAKkEjnMVzC5k8YYw+PCb/MHBjYNFdBfF9ZC+RqUV5FETrLl6
	fo0iczbKh6YU7LF3v9Rg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jc8x0-0004tt-Co; Fri, 22 May 2020 14:47:06 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jc8vo-0003p3-IP; Fri, 22 May 2020 14:45:54 +0000
Received: from pali.im (pali.im [31.31.79.79])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 05EF420727;
 Fri, 22 May 2020 14:45:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1590158752;
 bh=JuVtsoJtqiGRmlRjn0aQhleeQaWm700qqmuKFp/zUsM=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=KA9a1lxgJE9kGo8WzKl//DiDJ0mIhN5vTC2JDL6dMQ5+Zm9/Q5w7ftISDJaERGnsw
 WU7zCHsKRoAdfuF/WFi0DnRc7O+PXFrI8NmSYE5774cBV0eCl8oz+xEw8kDjsPAbmz
 iHLXemt9FudqdZVrtqvwWCywY1qzI8i/HFMoFqWo=
Received: by pali.im (Postfix)
 id 3FEBD51E; Fri, 22 May 2020 16:45:50 +0200 (CEST)
From: =?UTF-8?q?Pali=20Roh=C3=A1r?= <pali@kernel.org>
To: Ulf Hansson <ulf.hansson@linaro.org>,
	linux-mmc@vger.kernel.org
Subject: [PATCH 04/11] mmc: sdio: Move SDIO IDs from btmrvl driver to common
 include file
Date: Fri, 22 May 2020 16:44:05 +0200
Message-Id: <20200522144412.19712-5-pali@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200522144412.19712-1-pali@kernel.org>
References: <20200522144412.19712-1-pali@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200522_074552_654699_9B421A3A 
X-CRM114-Status: GOOD (  10.64  )
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

RGVmaW5lIGFwcHJvcHJpYXRlIG1hY3JvIG5hbWVzIGZvciBjb25zaXN0ZW5jeSB3aXRoIG90aGVy
IE1hcnZlbGwgbWFjcm9zLgoKU2lnbmVkLW9mZi1ieTogUGFsaSBSb2jDoXIgPHBhbGlAa2VybmVs
Lm9yZz4KLS0tCiBkcml2ZXJzL2JsdWV0b290aC9idG1ydmxfc2Rpby5jIHwgMTggKysrKysrKysr
LS0tLS0tLS0tCiBpbmNsdWRlL2xpbnV4L21tYy9zZGlvX2lkcy5oICAgIHwgIDggKysrKysrKysK
IDIgZmlsZXMgY2hhbmdlZCwgMTcgaW5zZXJ0aW9ucygrKSwgOSBkZWxldGlvbnMoLSkKCmRpZmYg
LS1naXQgYS9kcml2ZXJzL2JsdWV0b290aC9idG1ydmxfc2Rpby5jIGIvZHJpdmVycy9ibHVldG9v
dGgvYnRtcnZsX3NkaW8uYwppbmRleCAwZjNhMDIwNzAzYWIuLmEyOTZmODUyNjQzMyAxMDA2NDQK
LS0tIGEvZHJpdmVycy9ibHVldG9vdGgvYnRtcnZsX3NkaW8uYworKysgYi9kcml2ZXJzL2JsdWV0
b290aC9idG1ydmxfc2Rpby5jCkBAIC0zNTUsMzEgKzM1NSwzMSBAQCBzdGF0aWMgY29uc3Qgc3Ry
dWN0IGJ0bXJ2bF9zZGlvX2RldmljZSBidG1ydmxfc2Rpb19zZDg5OTcgPSB7CiAKIHN0YXRpYyBj
b25zdCBzdHJ1Y3Qgc2Rpb19kZXZpY2VfaWQgYnRtcnZsX3NkaW9faWRzW10gPSB7CiAJLyogTWFy
dmVsbCBTRDg2ODggQmx1ZXRvb3RoIGRldmljZSAqLwotCXsgU0RJT19ERVZJQ0UoU0RJT19WRU5E
T1JfSURfTUFSVkVMTCwgMHg5MTA1KSwKKwl7IFNESU9fREVWSUNFKFNESU9fVkVORE9SX0lEX01B
UlZFTEwsIFNESU9fREVWSUNFX0lEX01BUlZFTExfODY4OF9CVCksCiAJCQkuZHJpdmVyX2RhdGEg
PSAodW5zaWduZWQgbG9uZykmYnRtcnZsX3NkaW9fc2Q4Njg4IH0sCiAJLyogTWFydmVsbCBTRDg3
ODcgQmx1ZXRvb3RoIGRldmljZSAqLwotCXsgU0RJT19ERVZJQ0UoU0RJT19WRU5ET1JfSURfTUFS
VkVMTCwgMHg5MTFBKSwKKwl7IFNESU9fREVWSUNFKFNESU9fVkVORE9SX0lEX01BUlZFTEwsIFNE
SU9fREVWSUNFX0lEX01BUlZFTExfODc4N19CVCksCiAJCQkuZHJpdmVyX2RhdGEgPSAodW5zaWdu
ZWQgbG9uZykmYnRtcnZsX3NkaW9fc2Q4Nzg3IH0sCiAJLyogTWFydmVsbCBTRDg3ODcgQmx1ZXRv
b3RoIEFNUCBkZXZpY2UgKi8KLQl7IFNESU9fREVWSUNFKFNESU9fVkVORE9SX0lEX01BUlZFTEws
IDB4OTExQiksCisJeyBTRElPX0RFVklDRShTRElPX1ZFTkRPUl9JRF9NQVJWRUxMLCBTRElPX0RF
VklDRV9JRF9NQVJWRUxMXzg3ODdfQlRfQU1QKSwKIAkJCS5kcml2ZXJfZGF0YSA9ICh1bnNpZ25l
ZCBsb25nKSZidG1ydmxfc2Rpb19zZDg3ODcgfSwKIAkvKiBNYXJ2ZWxsIFNEODc5NyBCbHVldG9v
dGggZGV2aWNlICovCi0JeyBTRElPX0RFVklDRShTRElPX1ZFTkRPUl9JRF9NQVJWRUxMLCAweDkx
MkEpLAorCXsgU0RJT19ERVZJQ0UoU0RJT19WRU5ET1JfSURfTUFSVkVMTCwgU0RJT19ERVZJQ0Vf
SURfTUFSVkVMTF84Nzk3X0JUKSwKIAkJCS5kcml2ZXJfZGF0YSA9ICh1bnNpZ25lZCBsb25nKSZi
dG1ydmxfc2Rpb19zZDg3OTcgfSwKIAkvKiBNYXJ2ZWxsIFNEODg4NyBCbHVldG9vdGggZGV2aWNl
ICovCi0JeyBTRElPX0RFVklDRShTRElPX1ZFTkRPUl9JRF9NQVJWRUxMLCAweDkxMzYpLAorCXsg
U0RJT19ERVZJQ0UoU0RJT19WRU5ET1JfSURfTUFSVkVMTCwgU0RJT19ERVZJQ0VfSURfTUFSVkVM
TF84ODg3X0JUKSwKIAkJCS5kcml2ZXJfZGF0YSA9ICh1bnNpZ25lZCBsb25nKSZidG1ydmxfc2Rp
b19zZDg4ODcgfSwKIAkvKiBNYXJ2ZWxsIFNEODg5NyBCbHVldG9vdGggZGV2aWNlICovCi0JeyBT
RElPX0RFVklDRShTRElPX1ZFTkRPUl9JRF9NQVJWRUxMLCAweDkxMkUpLAorCXsgU0RJT19ERVZJ
Q0UoU0RJT19WRU5ET1JfSURfTUFSVkVMTCwgU0RJT19ERVZJQ0VfSURfTUFSVkVMTF84ODk3X0JU
KSwKIAkJCS5kcml2ZXJfZGF0YSA9ICh1bnNpZ25lZCBsb25nKSZidG1ydmxfc2Rpb19zZDg4OTcg
fSwKIAkvKiBNYXJ2ZWxsIFNEODk3NyBCbHVldG9vdGggZGV2aWNlICovCi0JeyBTRElPX0RFVklD
RShTRElPX1ZFTkRPUl9JRF9NQVJWRUxMLCAweDkxNDYpLAorCXsgU0RJT19ERVZJQ0UoU0RJT19W
RU5ET1JfSURfTUFSVkVMTCwgU0RJT19ERVZJQ0VfSURfTUFSVkVMTF84OTc3X0JUKSwKIAkJCS5k
cml2ZXJfZGF0YSA9ICh1bnNpZ25lZCBsb25nKSZidG1ydmxfc2Rpb19zZDg5NzcgfSwKIAkvKiBN
YXJ2ZWxsIFNEODk4NyBCbHVldG9vdGggZGV2aWNlICovCi0JeyBTRElPX0RFVklDRShTRElPX1ZF
TkRPUl9JRF9NQVJWRUxMLCAweDkxNEEpLAorCXsgU0RJT19ERVZJQ0UoU0RJT19WRU5ET1JfSURf
TUFSVkVMTCwgU0RJT19ERVZJQ0VfSURfTUFSVkVMTF84OTg3X0JUKSwKIAkJCS5kcml2ZXJfZGF0
YSA9ICh1bnNpZ25lZCBsb25nKSZidG1ydmxfc2Rpb19zZDg5ODcgfSwKIAkvKiBNYXJ2ZWxsIFNE
ODk5NyBCbHVldG9vdGggZGV2aWNlICovCi0JeyBTRElPX0RFVklDRShTRElPX1ZFTkRPUl9JRF9N
QVJWRUxMLCAweDkxNDIpLAorCXsgU0RJT19ERVZJQ0UoU0RJT19WRU5ET1JfSURfTUFSVkVMTCwg
U0RJT19ERVZJQ0VfSURfTUFSVkVMTF84OTk3X0JUKSwKIAkJCS5kcml2ZXJfZGF0YSA9ICh1bnNp
Z25lZCBsb25nKSZidG1ydmxfc2Rpb19zZDg5OTcgfSwKIAogCXsgfQkvKiBUZXJtaW5hdGluZyBl
bnRyeSAqLwpkaWZmIC0tZ2l0IGEvaW5jbHVkZS9saW51eC9tbWMvc2Rpb19pZHMuaCBiL2luY2x1
ZGUvbGludXgvbW1jL3NkaW9faWRzLmgKaW5kZXggOTAzNjFlYTdmNWVkLi4xMjM3ZTEwNDhkMDYg
MTAwNjQ0Ci0tLSBhL2luY2x1ZGUvbGludXgvbW1jL3NkaW9faWRzLmgKKysrIGIvaW5jbHVkZS9s
aW51eC9tbWMvc2Rpb19pZHMuaApAQCAtNjAsMTYgKzYwLDI0IEBACiAjZGVmaW5lIFNESU9fREVW
SUNFX0lEX01BUlZFTExfODY4OF9CVAkJMHg5MTA1CiAjZGVmaW5lIFNESU9fREVWSUNFX0lEX01B
UlZFTExfODc4Nl9XTEFOCTB4OTExNgogI2RlZmluZSBTRElPX0RFVklDRV9JRF9NQVJWRUxMXzg3
ODdfV0xBTgkweDkxMTkKKyNkZWZpbmUgU0RJT19ERVZJQ0VfSURfTUFSVkVMTF84Nzg3X0JUCQkw
eDkxMWEKKyNkZWZpbmUgU0RJT19ERVZJQ0VfSURfTUFSVkVMTF84Nzg3X0JUX0FNUAkweDkxMWIK
ICNkZWZpbmUgU0RJT19ERVZJQ0VfSURfTUFSVkVMTF84Nzk3X0YwCQkweDkxMjgKICNkZWZpbmUg
U0RJT19ERVZJQ0VfSURfTUFSVkVMTF84Nzk3X1dMQU4JMHg5MTI5CisjZGVmaW5lIFNESU9fREVW
SUNFX0lEX01BUlZFTExfODc5N19CVAkJMHg5MTJhCiAjZGVmaW5lIFNESU9fREVWSUNFX0lEX01B
UlZFTExfODg5N19XTEFOCTB4OTEyZAorI2RlZmluZSBTRElPX0RFVklDRV9JRF9NQVJWRUxMXzg4
OTdfQlQJCTB4OTEyZQogI2RlZmluZSBTRElPX0RFVklDRV9JRF9NQVJWRUxMXzg4ODdfRjAJCTB4
OTEzNAogI2RlZmluZSBTRElPX0RFVklDRV9JRF9NQVJWRUxMXzg4ODdfV0xBTgkweDkxMzUKKyNk
ZWZpbmUgU0RJT19ERVZJQ0VfSURfTUFSVkVMTF84ODg3X0JUCQkweDkxMzYKICNkZWZpbmUgU0RJ
T19ERVZJQ0VfSURfTUFSVkVMTF84ODAxX1dMQU4JMHg5MTM5CiAjZGVmaW5lIFNESU9fREVWSUNF
X0lEX01BUlZFTExfODk5N19GMAkJMHg5MTQwCiAjZGVmaW5lIFNESU9fREVWSUNFX0lEX01BUlZF
TExfODk5N19XTEFOCTB4OTE0MQorI2RlZmluZSBTRElPX0RFVklDRV9JRF9NQVJWRUxMXzg5OTdf
QlQJCTB4OTE0MgogI2RlZmluZSBTRElPX0RFVklDRV9JRF9NQVJWRUxMXzg5NzdfV0xBTgkweDkx
NDUKKyNkZWZpbmUgU0RJT19ERVZJQ0VfSURfTUFSVkVMTF84OTc3X0JUCQkweDkxNDYKICNkZWZp
bmUgU0RJT19ERVZJQ0VfSURfTUFSVkVMTF84OTg3X1dMQU4JMHg5MTQ5CisjZGVmaW5lIFNESU9f
REVWSUNFX0lEX01BUlZFTExfODk4N19CVAkJMHg5MTRhCiAKICNkZWZpbmUgU0RJT19WRU5ET1Jf
SURfTUVESUFURUsJCQkweDAzN2EKIAotLSAKMi4yMC4xCgoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KbGliZXJ0YXMtZGV2IG1haWxpbmcgbGlzdApsaWJl
cnRhcy1kZXZAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2xpYmVydGFzLWRldgo=
