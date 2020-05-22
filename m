Return-Path: <libertas-dev-bounces+lists+libertas-dev=lfdr.de@lists.infradead.org>
X-Original-To: lists+libertas-dev@lfdr.de
Delivered-To: lists+libertas-dev@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 221271DE98A
	for <lists+libertas-dev@lfdr.de>; Fri, 22 May 2020 16:48:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3SF/V7ySzvyUfx9nwGICODKDqcYu3W9INUizZGrHX5Q=; b=W6jkTg9+PrreG8
	2wnrFsxIS2AaZbkOkepbMJ7WFiVvF+FVH6GD9I5XmZcG7Q1ul6zfEuf2ScQW7v9sUYnwfyvL5mPx/
	H8FJKWhqu2XUbuVwIXPrlHVGUdR3D2wp3/4q26CMzg/7NsgkKs2chfZPO2/qe+ji/4gLxbiQrQYxA
	Blw0n19ND3rs04iBawMxVVBQK0AbSGYOJQs3T39aABDAzIOpqhSmFpU+s/XzRnZZcAqfo3S0jw+NQ
	7efrveq5G7M6Ux2rJF0LNo2sYdrmDdeTKcFIhFPLn0yp6/lPvYy52NGylLH2I5hF3VZKhsYmUz38I
	dDREYGv9IfH/e8Qe4QGw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jc8y2-0005qW-Cl; Fri, 22 May 2020 14:48:10 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jc8vr-0003sr-Pz; Fri, 22 May 2020 14:45:59 +0000
Received: from pali.im (pali.im [31.31.79.79])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 5D853204EF;
 Fri, 22 May 2020 14:45:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1590158755;
 bh=fmZWyu8S8zz/WmoFW+uWpo4sd9DDFs+iV3itMZTeMR0=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=oMliYZS+G4ZRp+xBCR+xbnXAAMh7UGnCuzkwQYS8ohlmf0AGqMfMh9j9ot4+ycbiY
 BpMyLY2icnsETEivqZGwzx8hDkx4nycPgULF3ulzlTbwmq7TlKa+/mc+4p6bGNAJ34
 ElE/GMzYjlMwFIJE448OlJo78KRdeVt+IEEreRpE=
Received: by pali.im (Postfix)
 id 93A9A51E; Fri, 22 May 2020 16:45:53 +0200 (CEST)
From: =?UTF-8?q?Pali=20Roh=C3=A1r?= <pali@kernel.org>
To: Ulf Hansson <ulf.hansson@linaro.org>,
	linux-mmc@vger.kernel.org
Subject: [PATCH 05/11] mmc: sdio: Move SDIO IDs from btmtksdio driver to
 common include file
Date: Fri, 22 May 2020 16:44:06 +0200
Message-Id: <20200522144412.19712-6-pali@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200522144412.19712-1-pali@kernel.org>
References: <20200522144412.19712-1-pali@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200522_074557_479814_3BC63011 
X-CRM114-Status: GOOD (  10.39  )
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
IG1hY3Jvcy4KClNpZ25lZC1vZmYtYnk6IFBhbGkgUm9ow6FyIDxwYWxpQGtlcm5lbC5vcmc+Ci0t
LQogZHJpdmVycy9ibHVldG9vdGgvYnRtdGtzZGlvLmMgfCA0ICsrLS0KIGluY2x1ZGUvbGludXgv
bW1jL3NkaW9faWRzLmggIHwgMiArKwogMiBmaWxlcyBjaGFuZ2VkLCA0IGluc2VydGlvbnMoKyks
IDIgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ibHVldG9vdGgvYnRtdGtzZGlv
LmMgYi9kcml2ZXJzL2JsdWV0b290aC9idG10a3NkaW8uYwppbmRleCA1MTk3ODhjNDQyY2EuLmJm
ZjA5NWJlMmY5NyAxMDA2NDQKLS0tIGEvZHJpdmVycy9ibHVldG9vdGgvYnRtdGtzZGlvLmMKKysr
IGIvZHJpdmVycy9ibHVldG9vdGgvYnRtdGtzZGlvLmMKQEAgLTUxLDkgKzUxLDkgQEAgc3RhdGlj
IGNvbnN0IHN0cnVjdCBidG10a3NkaW9fZGF0YSBtdDc2NjhfZGF0YSA9IHsKIH07CiAKIHN0YXRp
YyBjb25zdCBzdHJ1Y3Qgc2Rpb19kZXZpY2VfaWQgYnRtdGtzZGlvX3RhYmxlW10gPSB7Ci0Je1NE
SU9fREVWSUNFKFNESU9fVkVORE9SX0lEX01FRElBVEVLLCAweDc2NjMpLAorCXtTRElPX0RFVklD
RShTRElPX1ZFTkRPUl9JRF9NRURJQVRFSywgU0RJT19ERVZJQ0VfSURfTUVESUFURUtfTVQ3NjYz
KSwKIAkgLmRyaXZlcl9kYXRhID0gKGtlcm5lbF91bG9uZ190KSZtdDc2NjNfZGF0YSB9LAotCXtT
RElPX0RFVklDRShTRElPX1ZFTkRPUl9JRF9NRURJQVRFSywgMHg3NjY4KSwKKwl7U0RJT19ERVZJ
Q0UoU0RJT19WRU5ET1JfSURfTUVESUFURUssIFNESU9fREVWSUNFX0lEX01FRElBVEVLX01UNzY2
OCksCiAJIC5kcml2ZXJfZGF0YSA9IChrZXJuZWxfdWxvbmdfdCkmbXQ3NjY4X2RhdGEgfSwKIAl7
IH0JLyogVGVybWluYXRpbmcgZW50cnkgKi8KIH07CmRpZmYgLS1naXQgYS9pbmNsdWRlL2xpbnV4
L21tYy9zZGlvX2lkcy5oIGIvaW5jbHVkZS9saW51eC9tbWMvc2Rpb19pZHMuaAppbmRleCAxMjM3
ZTEwNDhkMDYuLmM5YWNhNTdkNGRlYSAxMDA2NDQKLS0tIGEvaW5jbHVkZS9saW51eC9tbWMvc2Rp
b19pZHMuaAorKysgYi9pbmNsdWRlL2xpbnV4L21tYy9zZGlvX2lkcy5oCkBAIC04MCw2ICs4MCw4
IEBACiAjZGVmaW5lIFNESU9fREVWSUNFX0lEX01BUlZFTExfODk4N19CVAkJMHg5MTRhCiAKICNk
ZWZpbmUgU0RJT19WRU5ET1JfSURfTUVESUFURUsJCQkweDAzN2EKKyNkZWZpbmUgU0RJT19ERVZJ
Q0VfSURfTUVESUFURUtfTVQ3NjYzCQkweDc2NjMKKyNkZWZpbmUgU0RJT19ERVZJQ0VfSURfTUVE
SUFURUtfTVQ3NjY4CQkweDc2NjgKIAogI2RlZmluZSBTRElPX1ZFTkRPUl9JRF9TSUFOTwkJCTB4
MDM5YQogI2RlZmluZSBTRElPX0RFVklDRV9JRF9TSUFOT19OT1ZBX0IwCQkweDAyMDEKLS0gCjIu
MjAuMQoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxp
YmVydGFzLWRldiBtYWlsaW5nIGxpc3QKbGliZXJ0YXMtZGV2QGxpc3RzLmluZnJhZGVhZC5vcmcK
aHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saWJlcnRhcy1kZXYK
