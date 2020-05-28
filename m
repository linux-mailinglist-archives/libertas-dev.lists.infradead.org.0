Return-Path: <libertas-dev-bounces+lists+libertas-dev=lfdr.de@lists.infradead.org>
X-Original-To: lists+libertas-dev@lfdr.de
Delivered-To: lists+libertas-dev@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AEA121E5CDB
	for <lists+libertas-dev@lfdr.de>; Thu, 28 May 2020 12:15:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zE1m663iSA1dDr7W3g4NxZ7eCP73JBFc6rgxB6z6R24=; b=mNyDZpdEDh6aNJ
	Z2OdKGR+ANp5lMPERFlzuC8cJ49JecChEI3HkSCqXEH440ZHy/7wC+lr7m1mbhNZDWh3ZM487JK8h
	brOaxy0154M62b/APlnWgWgPdVltzPWStzdVz1QEwdyyXBjSI5bZQRMNKjlHO/9t+byu/e+dhdZ5b
	1ZJpgC6I/uQIYDVH0gl8nVw4gxcEA45XFsgIIOlYtHwApmM97+ogmTLD1rBxS/9HDcn5sAgij277c
	JIJjGYk9bmEUC38jcY5pm+A47od8LHs1Bzw5kN09mTYp7O4hfw0oIrpI5QvBxSrvozhBg/phYPq89
	SKp3xZfqR0ACxWzIn8EA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeFZR-0008MO-4A; Thu, 28 May 2020 10:15:29 +0000
Received: from mail-vk1-xa43.google.com ([2607:f8b0:4864:20::a43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeFYf-0005gU-Cp
 for libertas-dev@lists.infradead.org; Thu, 28 May 2020 10:14:44 +0000
Received: by mail-vk1-xa43.google.com with SMTP id r11so6594168vkf.11
 for <libertas-dev@lists.infradead.org>; Thu, 28 May 2020 03:14:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=CX+u123nVjVuRZW6zRvLQzHDlGFq6dyKso1AdFfB1VU=;
 b=ylyyWluJV1udCPHKbUpBa9gzteEE9rpam5yb+9Qo5ZwIaIvYSKHGX3rwW8Qu1yRVbs
 s71Mhpbn4QTKCa9jPCBH3htvR2tWok5/1SRIeN1hxVVWT5gP564EBK2f09DGMHTsm88k
 E/1/Mm9s9RRLFrSj/olPzuvMcy35QUUaEA3viA62YTJSswW4ihcjUcj0j3CqjQk1t0Tw
 fOD6/+BDIpMYgME2I6zR07nY/c/eQBKM+cPSdHE+aeP51ba14fhxbL0ogMP3G7O7Ngvi
 MEJknki2sFvjerUF1dfNz5OXK1ad6hNSCiQ1ajt5pWLA71kvbSH7LxLetwkAl3aAifv+
 ZtRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=CX+u123nVjVuRZW6zRvLQzHDlGFq6dyKso1AdFfB1VU=;
 b=WMagQHwKAeMSUXzZeDAIkrrwaAxRvnNPQtZc8Irh/uXyY1mo52MAeGBdGSOmKMz0FR
 7BKQ7kSx2mz+YpBqdsa3Ts4bsunjXuuAgdmZJW24rGc5GMp9RywpESS6pMAHTIFHHBQo
 HEKZgG6RldsyejByidDD9Fys9K0wVpAc6xVdlsGpi2uxA9qFp55xJC82uLZP2ZYg7WBt
 ny5IRTxOUJ3dtcL1MpIeZ/G5tTjhSdDTTmjqjsZR3ADSNqIWRFxCxyQeRqwB8/evrrHu
 OBhfvDQKk/WjvcSxpzeNPCsa4LQjE2lrIsCX5yD1OtWpq8J5c7INewcA+94/PNXhV7CE
 wWaw==
X-Gm-Message-State: AOAM531sdsjS9XXn9ZpPIvB4733oIEx7VilBPsbLlDXOvrnL7LHm9xr6
 DNm+u3rqaYMl5EQMlKjw9bCS30PdJbMxREfueCQmMw==
X-Google-Smtp-Source: ABdhPJzK0sB7xaJ5Xvcd9jk++euAwMqH3Mxp+8vmK46elIBGi117Z0Erqx3b1G/MIRgbK/NHLsfYjW544ZgBjhty6p4=
X-Received: by 2002:a1f:fc06:: with SMTP id a6mr1441822vki.101.1590660877077; 
 Thu, 28 May 2020 03:14:37 -0700 (PDT)
MIME-Version: 1.0
References: <20200522144412.19712-1-pali@kernel.org>
 <CAPDyKFqwrtJy2Ss0_KcBtpGP78d_BePTGJp01KtfuOaQqiwiHg@mail.gmail.com>
In-Reply-To: <CAPDyKFqwrtJy2Ss0_KcBtpGP78d_BePTGJp01KtfuOaQqiwiHg@mail.gmail.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Thu, 28 May 2020 12:13:59 +0200
Message-ID: <CAPDyKFrT0bp+HHPZemFEVjhNXbWB_P2NWQxVU43rexzdYB3reg@mail.gmail.com>
Subject: Re: [PATCH 00/11] mmc: sdio: Move SDIO IDs from drivers to common
 include file
To: =?UTF-8?Q?Pali_Roh=C3=A1r?= <pali@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200528_031441_431245_B08F8F1E 
X-CRM114-Status: GOOD (  16.57  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:a43 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 Xinming Hu <huxinming820@gmail.com>,
 linux-wireless <linux-wireless@vger.kernel.org>,
 "linux-mmc@vger.kernel.org" <linux-mmc@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Amitkumar Karwar <amitkarwar@gmail.com>,
 =?UTF-8?B?TWFyZWsgQmVow7pu?= <marek.behun@nic.cz>,
 Ganapathi Bhat <ganapathi.bhat@nxp.com>, ath10k@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 brcm80211-dev-list <brcm80211-dev-list@cypress.com>,
 Kalle Valo <kvalo@codeaurora.org>, b43-dev@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "libertas-dev" <libertas-dev-bounces@lists.infradead.org>
Errors-To: libertas-dev-bounces+lists+libertas-dev=lfdr.de@lists.infradead.org

T24gTW9uLCAyNSBNYXkgMjAyMCBhdCAwOToxNSwgVWxmIEhhbnNzb24gPHVsZi5oYW5zc29uQGxp
bmFyby5vcmc+IHdyb3RlOgo+Cj4gT24gRnJpLCAyMiBNYXkgMjAyMCBhdCAxNjo0NSwgUGFsaSBS
b2jDoXIgPHBhbGlAa2VybmVsLm9yZz4gd3JvdGU6Cj4gPgo+ID4gTW9zdCBTRElPIElEcyBhcmUg
ZGVmaW5lZCBpbiB0aGUgY29tbW9uIGluY2x1ZGUgZmlsZSBsaW51eC9tbWMvc2Rpb19pZHMuaC4K
PiA+IEJ1dCBzb21lIGRyaXZlcnMgZGVmaW5lIElEcyBsb2NhbGx5IG9yIGRvIG5vdCB1c2UgZXhp
c3RpbmcgbWFjcm9zIGZyb20gdGhlCj4gPiBjb21tb24gaW5jbHVkZSBmaWxlLgo+ID4KPiA+IFRo
aXMgcGF0Y2ggc2VyaWVzIGZpeGVzIGFib3ZlIGluY29uc2lzdGVuY3kuIEl0IGRlZmluZXMgbWlz
c2luZyBtYWNybyBuYW1lcwo+ID4gYW5kIG1vdmVzIGFsbCByZW1haW5pbmcgU0RJTyBJRHMgZnJv
bSBkcml2ZXJzIHRvIHRoZSBjb21tb24gaW5jbHVkZSBmaWxlLgo+ID4gQWxzbyBzb21lIG1hY3Jv
IG5hbWVzIGFyZSBjaGFuZ2VkIHRvIGZvbGxvdyBleGlzdGluZyBuYW1pbmcgY29udmVudGlvbnMu
Cj4KPiBUaGFua3MgLSBhIG5pY2UgY2xlYW51cCEKPgo+IEkgZ3Vlc3MgdGhpcyBpcyBiZXN0IHF1
ZXVlZCB2aWEgbXkgbW1jIHRyZWUsIHVubGVzcyBibHVldG9vdGgvd2lyZWxlc3MKPiBtYWludGFp
bmVycyB0aGluayB0aGVyZSBhcmUgc29tZSBwcm9ibGVtcyB3aXRoIHRoYXQuIEkgd2lsbCB3YWl0
IGZvcgo+IGFuIGFjayBmcm9tIHRoZW0gYmVmb3JlIGFwcGx5aW5nLgoKSXQncyBnZXR0aW5nIGxh
dGUgZm9yIHY1LjgsIHNvIEkgZGVjaWRlZCB0byBxdWV1ZSB0aGlzIHVwIGFzIGl0J3MKcmF0aGVy
IHRyaXZpYWwgY2hhbmdlcy4gSWYgYW55b25lIGhhcyBhbiBvYmplY3Rpb24sIHBsZWFzZSBsZXQg
bWUKa25vdy4KClRoYW5rcyEKCktpbmQgcmVnYXJkcwpVZmZlCgoKPgo+IEtpbmQgcmVnYXJkcwo+
IFVmZmUKPgo+ID4KPiA+IFBhbGkgUm9ow6FyICgxMSk6Cj4gPiAgIG1tYzogc2RpbzogRml4IG1h
Y3JvIG5hbWUgZm9yIE1hcnZlbGwgZGV2aWNlIHdpdGggSUQgMHg5MTM0Cj4gPiAgIG1tYzogc2Rp
bzogQ2hhbmdlIG1hY3JvIG5hbWVzIGZvciBNYXJ2ZWxsIDg2ODggbW9kdWxlcwo+ID4gICBtbWM6
IHNkaW86IE1vdmUgU0RJTyBJRHMgZnJvbSBtd2lmaWV4IGRyaXZlciB0byBjb21tb24gaW5jbHVk
ZSBmaWxlCj4gPiAgIG1tYzogc2RpbzogTW92ZSBTRElPIElEcyBmcm9tIGJ0bXJ2bCBkcml2ZXIg
dG8gY29tbW9uIGluY2x1ZGUgZmlsZQo+ID4gICBtbWM6IHNkaW86IE1vdmUgU0RJTyBJRHMgZnJv
bSBidG10a3NkaW8gZHJpdmVyIHRvIGNvbW1vbiBpbmNsdWRlIGZpbGUKPiA+ICAgbW1jOiBzZGlv
OiBNb3ZlIFNESU8gSURzIGZyb20gc21zc2RpbyBkcml2ZXIgdG8gY29tbW9uIGluY2x1ZGUgZmls
ZQo+ID4gICBtbWM6IHNkaW86IE1vdmUgU0RJTyBJRHMgZnJvbSBhdGg2a2wgZHJpdmVyIHRvIGNv
bW1vbiBpbmNsdWRlIGZpbGUKPiA+ICAgbW1jOiBzZGlvOiBNb3ZlIFNESU8gSURzIGZyb20gYXRo
MTBrIGRyaXZlciB0byBjb21tb24gaW5jbHVkZSBmaWxlCj4gPiAgIG1tYzogc2RpbzogTW92ZSBT
RElPIElEcyBmcm9tIGI0My1zZGlvIGRyaXZlciB0byBjb21tb24gaW5jbHVkZSBmaWxlCj4gPiAg
IG1tYzogc2RpbzogRml4IEN5cHJlc3MgU0RJTyBJRHMgbWFjcm9zIGluIGNvbW1vbiBpbmNsdWRl
IGZpbGUKPiA+ICAgbW1jOiBzZGlvOiBTb3J0IGFsbCBTRElPIElEcyBpbiBjb21tb24gaW5jbHVk
ZSBmaWxlCj4gPgo+ID4gIGRyaXZlcnMvYmx1ZXRvb3RoL2J0bXJ2bF9zZGlvLmMgICAgICAgICAg
ICAgICB8IDE4ICsrLS0KPiA+ICBkcml2ZXJzL2JsdWV0b290aC9idG10a3NkaW8uYyAgICAgICAg
ICAgICAgICAgfCAgNCArLQo+ID4gIGRyaXZlcnMvbWVkaWEvbW1jL3NpYW5vL3Ntc3NkaW8uYyAg
ICAgICAgICAgICB8IDEwICstCj4gPiAgZHJpdmVycy9tbWMvY29yZS9xdWlya3MuaCAgICAgICAg
ICAgICAgICAgICAgIHwgIDIgKy0KPiA+ICBkcml2ZXJzL25ldC93aXJlbGVzcy9hdGgvYXRoMTBr
L3NkaW8uYyAgICAgICAgfCAyNSArKy0tLQo+ID4gIGRyaXZlcnMvbmV0L3dpcmVsZXNzL2F0aC9h
dGgxMGsvc2Rpby5oICAgICAgICB8ICA4IC0tCj4gPiAgZHJpdmVycy9uZXQvd2lyZWxlc3MvYXRo
L2F0aDZrbC9oaWYuaCAgICAgICAgIHwgIDYgLS0KPiA+ICBkcml2ZXJzL25ldC93aXJlbGVzcy9h
dGgvYXRoNmtsL3NkaW8uYyAgICAgICAgfCAxNyArKy0tCj4gPiAgZHJpdmVycy9uZXQvd2lyZWxl
c3MvYnJvYWRjb20vYjQzL3NkaW8uYyAgICAgIHwgIDQgKy0KPiA+ICAuLi4vYnJvYWRjb20vYnJj
bTgwMjExL2JyY21mbWFjL2JjbXNkaC5jICAgICAgfCAgNiArLQo+ID4gIC4uLi9icm9hZGNvbS9i
cmNtODAyMTEvYnJjbWZtYWMvc2Rpby5jICAgICAgICB8ICA0ICstCj4gPiAgLi4uL25ldC93aXJl
bGVzcy9tYXJ2ZWxsL2xpYmVydGFzL2lmX3NkaW8uYyAgIHwgIDIgKy0KPiA+ICBkcml2ZXJzL25l
dC93aXJlbGVzcy9tYXJ2ZWxsL213aWZpZXgvc2Rpby5jICAgfCAzOCArKy0tLS0tLQo+ID4gIGlu
Y2x1ZGUvbGludXgvbW1jL3NkaW9faWRzLmggICAgICAgICAgICAgICAgICB8IDk0ICsrKysrKysr
KysrKysrLS0tLS0KPiA+ICAxNCBmaWxlcyBjaGFuZ2VkLCAxMjAgaW5zZXJ0aW9ucygrKSwgMTE4
IGRlbGV0aW9ucygtKQo+ID4KPiA+IC0tCj4gPiAyLjIwLjEKPiA+CgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaWJlcnRhcy1kZXYgbWFpbGluZyBsaXN0
CmxpYmVydGFzLWRldkBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQu
b3JnL21haWxtYW4vbGlzdGluZm8vbGliZXJ0YXMtZGV2Cg==
