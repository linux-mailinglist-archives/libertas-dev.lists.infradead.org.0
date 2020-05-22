Return-Path: <libertas-dev-bounces+lists+libertas-dev=lfdr.de@lists.infradead.org>
X-Original-To: lists+libertas-dev@lfdr.de
Delivered-To: lists+libertas-dev@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DEC51DEB5E
	for <lists+libertas-dev@lfdr.de>; Fri, 22 May 2020 17:02:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=N+JjgJQDzzYC3bjmkd7B3jwfu/ZxTEsPRfoxU37qWoM=; b=llZwJsqmaUv1YS
	3VAt0nCVUia9sbtZbgOYDgHXQ5S3l/Np3s0BHZD+Fo29b0KX9dgh38yC8PsXRbUJNqb3fPTBfaebA
	+qWfJyIy3rfOf4ByfaJHzqQZxIYqH2Owfi5vgQEJ2/J1BGdD2HsHvnFPFN6oHuTsx1Eh0vgMMAgEv
	4gwPlAXc23Jm+bAjFe1hukuYzXB6D4Z9Wt/bpymddMIPmRucoE2yTjhv2ImVU4/UdQNlGNHRvnlj0
	AqZXuhFhEQCaIRAgETN2a20EGoS/6d7NPv9HUAsRC8bevzMbXpqMfFHrklUzGWGZv8IUedboVhNzu
	sZYOcr9BX8REipPtq7KQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jc9Bk-0007Bq-1Q; Fri, 22 May 2020 15:02:20 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jc9Bh-0007BP-2R; Fri, 22 May 2020 15:02:18 +0000
Received: by mail-wm1-x341.google.com with SMTP id u188so10127989wmu.1;
 Fri, 22 May 2020 08:02:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:autocrypt:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=a9n5xd1ltnZZ3RbrZwl84+xIWEuf6ZT9ZKRvdMqhyBk=;
 b=mSVYyu67OhnRjiasyjkj81NrZZBVR0wqXYemhPpDqIiJlzrxxz9lWrHPD92JcjgYlr
 lPBSJG4d20Uzli1Y1R1/75F4bgvrCqlAB5gTrMk5TfUIUOwRY02I4PiPe8VL5EsB8OVf
 /5AtSlBNeWOdRNCIxoKU+zzlegzCk/v5OGW9BJ0vS8e7oujb6b0/K8EHisW65JmqWbVF
 HKfVT1BEL+fabAYX3gFzYrLz0StQ4BABU6fun+qxaXlD8vrm4cTFQ2P8+GXQIWtHdQd8
 SaoK6RjqfzjKbfO1mZWFY1mpgy4tGg5WIHnoQDx3OLYawtD5lpaRs9DPIHn1DEdbPA29
 ybtA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:autocrypt
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=a9n5xd1ltnZZ3RbrZwl84+xIWEuf6ZT9ZKRvdMqhyBk=;
 b=LKDYvrMq0dSfIAgbfQxRmh3W+X5FvmHGKkFi9hIlrdneSUU08+ojHsS+YLUxDdEJHp
 kfwaMNi4wKP6qQHAp2pknwAl1DFdQ85EV5SnDBO7PwvnEk7xT9ToSCFNGZ2ABdOnU5Wx
 xKE8eA6Loa4CeEXiTSeJZ7D5kpghtl/jcLLXTVxrqECXWRktQ/m0QwtvPqLa7vijq9IW
 2ImdgwGYyT7lF2tRPeQJ5T/WpuMdTkJnx9bJrEHryIhMDe2ZR1yp1tGGvQ1fInJb8eKE
 o4aV9B/494eO/obD/3cmuncHf+qsyUbpSoKIAfeZBPChhLJwxueA/bS3uEDls4Z4yJOU
 +Z9g==
X-Gm-Message-State: AOAM5332SheS/6Z8hB0Fy6/qQ7Qjaclv8pL/s6DshfP+t9D21dmbKITg
 sjO/V+AXPjNS8oUxX+3JFd0=
X-Google-Smtp-Source: ABdhPJxP3pbE9K+Hw2TI3eEdCbakWXREZKIcg4deIGOx9s2R3TMdIB885/VJmG44wQKx/A84zwaQ7w==
X-Received: by 2002:a1c:9d50:: with SMTP id g77mr13808745wme.56.1590159735082; 
 Fri, 22 May 2020 08:02:15 -0700 (PDT)
Received: from ziggy.stardust ([213.195.113.243])
 by smtp.gmail.com with ESMTPSA id g10sm9596476wrx.4.2020.05.22.08.02.12
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 22 May 2020 08:02:13 -0700 (PDT)
Subject: Re: [PATCH 05/11] mmc: sdio: Move SDIO IDs from btmtksdio driver to
 common include file
To: =?UTF-8?Q?Pali_Roh=c3=a1r?= <pali@kernel.org>,
 Ulf Hansson <ulf.hansson@linaro.org>, linux-mmc@vger.kernel.org
References: <20200522144412.19712-1-pali@kernel.org>
 <20200522144412.19712-6-pali@kernel.org>
From: Matthias Brugger <matthias.bgg@gmail.com>
Autocrypt: addr=matthias.bgg@gmail.com; prefer-encrypt=mutual; keydata=
 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
Message-ID: <804fbad7-11ba-8d8b-d58e-3eb4e5cf2b41@gmail.com>
Date: Fri, 22 May 2020 17:02:11 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200522144412.19712-6-pali@kernel.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200522_080217_120884_7D800FB9 
X-CRM114-Status: GOOD (  14.37  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [matthias.bgg[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 Xinming Hu <huxinming820@gmail.com>, Sean Wang <sean.wang@mediatek.com>,
 linux-wireless@vger.kernel.org, linux-kernel@vger.kernel.org,
 Amitkumar Karwar <amitkarwar@gmail.com>,
 =?UTF-8?Q?Marek_Beh=c3=ban?= <marek.behun@nic.cz>,
 Ganapathi Bhat <ganapathi.bhat@nxp.com>, ath10k@lists.infradead.org,
 Mauro Carvalho Chehab <mchehab@kernel.org>, brcm80211-dev-list@cypress.com,
 Kalle Valo <kvalo@codeaurora.org>, b43-dev@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "libertas-dev" <libertas-dev-bounces@lists.infradead.org>
Errors-To: libertas-dev-bounces+lists+libertas-dev=lfdr.de@lists.infradead.org

CgpPbiAyMi8wNS8yMDIwIDE2OjQ0LCBQYWxpIFJvaMOhciB3cm90ZToKPiBEZWZpbmUgYXBwcm9w
cmlhdGUgbWFjcm8gbmFtZXMgZm9yIGNvbnNpc3RlbmN5IHdpdGggb3RoZXIgbWFjcm9zLgo+IAo+
IFNpZ25lZC1vZmYtYnk6IFBhbGkgUm9ow6FyIDxwYWxpQGtlcm5lbC5vcmc+CgpSZXZpZXdlZC1i
eTogTWF0dGhpYXMgQnJ1Z2dlciA8bWF0dGhpYXMuYmdnQGdtYWlsLmNvbT4KCj4gLS0tCj4gIGRy
aXZlcnMvYmx1ZXRvb3RoL2J0bXRrc2Rpby5jIHwgNCArKy0tCj4gIGluY2x1ZGUvbGludXgvbW1j
L3NkaW9faWRzLmggIHwgMiArKwo+ICAyIGZpbGVzIGNoYW5nZWQsIDQgaW5zZXJ0aW9ucygrKSwg
MiBkZWxldGlvbnMoLSkKPiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ibHVldG9vdGgvYnRtdGtz
ZGlvLmMgYi9kcml2ZXJzL2JsdWV0b290aC9idG10a3NkaW8uYwo+IGluZGV4IDUxOTc4OGM0NDJj
YS4uYmZmMDk1YmUyZjk3IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvYmx1ZXRvb3RoL2J0bXRrc2Rp
by5jCj4gKysrIGIvZHJpdmVycy9ibHVldG9vdGgvYnRtdGtzZGlvLmMKPiBAQCAtNTEsOSArNTEs
OSBAQCBzdGF0aWMgY29uc3Qgc3RydWN0IGJ0bXRrc2Rpb19kYXRhIG10NzY2OF9kYXRhID0gewo+
ICB9Owo+ICAKPiAgc3RhdGljIGNvbnN0IHN0cnVjdCBzZGlvX2RldmljZV9pZCBidG10a3NkaW9f
dGFibGVbXSA9IHsKPiAtCXtTRElPX0RFVklDRShTRElPX1ZFTkRPUl9JRF9NRURJQVRFSywgMHg3
NjYzKSwKPiArCXtTRElPX0RFVklDRShTRElPX1ZFTkRPUl9JRF9NRURJQVRFSywgU0RJT19ERVZJ
Q0VfSURfTUVESUFURUtfTVQ3NjYzKSwKPiAgCSAuZHJpdmVyX2RhdGEgPSAoa2VybmVsX3Vsb25n
X3QpJm10NzY2M19kYXRhIH0sCj4gLQl7U0RJT19ERVZJQ0UoU0RJT19WRU5ET1JfSURfTUVESUFU
RUssIDB4NzY2OCksCj4gKwl7U0RJT19ERVZJQ0UoU0RJT19WRU5ET1JfSURfTUVESUFURUssIFNE
SU9fREVWSUNFX0lEX01FRElBVEVLX01UNzY2OCksCj4gIAkgLmRyaXZlcl9kYXRhID0gKGtlcm5l
bF91bG9uZ190KSZtdDc2NjhfZGF0YSB9LAo+ICAJeyB9CS8qIFRlcm1pbmF0aW5nIGVudHJ5ICov
Cj4gIH07Cj4gZGlmZiAtLWdpdCBhL2luY2x1ZGUvbGludXgvbW1jL3NkaW9faWRzLmggYi9pbmNs
dWRlL2xpbnV4L21tYy9zZGlvX2lkcy5oCj4gaW5kZXggMTIzN2UxMDQ4ZDA2Li5jOWFjYTU3ZDRk
ZWEgMTAwNjQ0Cj4gLS0tIGEvaW5jbHVkZS9saW51eC9tbWMvc2Rpb19pZHMuaAo+ICsrKyBiL2lu
Y2x1ZGUvbGludXgvbW1jL3NkaW9faWRzLmgKPiBAQCAtODAsNiArODAsOCBAQAo+ICAjZGVmaW5l
IFNESU9fREVWSUNFX0lEX01BUlZFTExfODk4N19CVAkJMHg5MTRhCj4gIAo+ICAjZGVmaW5lIFNE
SU9fVkVORE9SX0lEX01FRElBVEVLCQkJMHgwMzdhCj4gKyNkZWZpbmUgU0RJT19ERVZJQ0VfSURf
TUVESUFURUtfTVQ3NjYzCQkweDc2NjMKPiArI2RlZmluZSBTRElPX0RFVklDRV9JRF9NRURJQVRF
S19NVDc2NjgJCTB4NzY2OAo+ICAKPiAgI2RlZmluZSBTRElPX1ZFTkRPUl9JRF9TSUFOTwkJCTB4
MDM5YQo+ICAjZGVmaW5lIFNESU9fREVWSUNFX0lEX1NJQU5PX05PVkFfQjAJCTB4MDIwMQo+IAoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGliZXJ0YXMt
ZGV2IG1haWxpbmcgbGlzdApsaWJlcnRhcy1kZXZAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8v
bGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpYmVydGFzLWRldgo=
