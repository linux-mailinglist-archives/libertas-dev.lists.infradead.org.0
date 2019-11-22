Return-Path: <libertas-dev-bounces+lists+libertas-dev=lfdr.de@lists.infradead.org>
X-Original-To: lists+libertas-dev@lfdr.de
Delivered-To: lists+libertas-dev@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 35ADF105FF8
	for <lists+libertas-dev@lfdr.de>; Fri, 22 Nov 2019 06:29:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=/kITzmy+Qb8L3SkgOPfRL3A9YJi6j8pjhF97jpgdKUA=; b=Jvo
	VZdFtDpkOAG5KVtY3KN8Wg/bcotcseXodL2mgmXVxt1i6x0O5vK5S8bnvP6XsOYO1AMf4PvJUcZgu
	OkIGDg9pmAJSHr7no07S86AnpyYngzFPf6I9at+7MH2/dASPVLggdvMrO29bqv39+jBjjMpKsAlhP
	QYblX5nwq91+Uas8zGG6huJ9DoQefxYCemYUFjCt8b0J3PcrNfBn3GYd4msTBal2B8sXtQjg/OlWU
	Eqel/caYeMPJjHfvU8HbVbK2sm6X3agN3/yJXZ+i3SEqEqUXtqGMQrXu8Tq8xTdvNFG3t3Xr6AR9G
	SmjlcrbhHBjRAy9bY8fSnSEAevFmS1g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iY1Vi-0007IA-1o; Fri, 22 Nov 2019 05:29:38 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iY1Ve-0007Ha-Sx
 for libertas-dev@lists.infradead.org; Fri, 22 Nov 2019 05:29:36 +0000
Received: by mail-pg1-x541.google.com with SMTP id b10so2803074pgd.4
 for <libertas-dev@lists.infradead.org>; Thu, 21 Nov 2019 21:29:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=9G4UM2vhuEG4TSdFZTVuZ71GTOHLABBI6xxxI/2Oncw=;
 b=WaDUta6XODn4hzzqR0np+iPcfBChaSE05EpSM8UrALWvgf7x/9f0e8SMvgXTGXaN74
 Irmx+lKSr5piR/mhpfRO+HVN7bu7ukOSsxCxlNav6kvJn3SG/q0TV9VGoWEKM+8yISrK
 Bc5MtndhyGLDrWQFgc5fSdMf+/79HC0AWnnavMoEKxnAti/HKBQnIPreGoLnrWIpbhXZ
 EdU3ei0kxlwAUbNl8/FywUG2qzQeoeh5RranVfooFhbBQ0QfNtx3k3ARWrVdT9uV7QtX
 pcpYtJsjn94TXL0llHTzpE182eTvmUrzxf89ubigJh+EYnryHC+HUHZoVtjYtbjidWoV
 I0FQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=9G4UM2vhuEG4TSdFZTVuZ71GTOHLABBI6xxxI/2Oncw=;
 b=DwwYeCM9Kx4tvPnvfXjpQTUYez3aofD86IMdkvL7poMH8UL5dMtUbIMZ/ahEoZCDDt
 MpoqAaoCqJvVblVDekd/L8NCdlzn5Tb1+mFZAGltAMZyqTWAXVfvsVnvXFHxjKpxMPmA
 TiB6c65n1lXyaKEdn3Wkj3vFO8f3dSXzICbz+fX8SXVDNu6eH9US8H+vRfF0HCK24FC3
 o7FyI+gGYbiCQ6NaEmUBxUEEKW7PpAK8O+f6JJSpc3XiDsUXNQcy4c59VOuqkXbvkgzg
 VBidvt/h5/a+DczMV/X2Vp3FA50MwP2eVKteiQBB69dVhz2/cNvpJmzJosSlFTr/+DYD
 Zb3Q==
X-Gm-Message-State: APjAAAWNB8IG0mjIWgfT25ijXoTYtq2JtuGxvfuO4mlQqSb2YL5+baJu
 hkeo4yu7PQn/zvCZQzmLAcxApc+6m3M=
X-Google-Smtp-Source: APXvYqwPwHZStvNKOZtUBWgPYiEFiNFqEQLMngqNoFN6jFqDKFjISduUPDUYh2y907mFwD+Qn6zs9w==
X-Received: by 2002:a63:7456:: with SMTP id e22mr14245471pgn.314.1574400573682; 
 Thu, 21 Nov 2019 21:29:33 -0800 (PST)
Received: from localhost ([38.121.20.202])
 by smtp.gmail.com with ESMTPSA id x192sm5658165pfd.96.2019.11.21.21.29.32
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 21 Nov 2019 21:29:32 -0800 (PST)
From: huangwenabc@gmail.com
To: linux-wireless@vger.kernel.org
Subject: [PATCH] libertas: Fix two buffer overflows at parsing bss descriptor
Date: Fri, 22 Nov 2019 13:29:17 +0800
Message-Id: <20191122052917.11309-1-huangwenabc@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191121_212934_932017_10FBAF39 
X-CRM114-Status: UNSURE (   9.72  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (huangwenabc[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-distros@vs.openwall.org, security@kernel.org,
 libertas-dev@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "libertas-dev" <libertas-dev-bounces@lists.infradead.org>
Errors-To: libertas-dev-bounces+lists+libertas-dev=lfdr.de@lists.infradead.org

From: Wen Huang <huangwenabc@gmail.com>

add_ie_rates() copys rates without checking the length 
in bss descriptor from remote AP.when victim connects to 
remote attacker, this may trigger buffer overflow.
lbs_ibss_join_existing() copys rates without checking the length 
in bss descriptor from remote IBSS node.when victim connects to 
remote attacker, this may trigger buffer overflow.
Fix them by putting the length check before performing copy.

This fix addresses CVE-2019-14896 and CVE-2019-14897.

Signed-off-by: Wen Huang <huangwenabc@gmail.com>
---
 drivers/net/wireless/marvell/libertas/cfg.c | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/drivers/net/wireless/marvell/libertas/cfg.c b/drivers/net/wireless/marvell/libertas/cfg.c
index 57edfada0..290280764 100644
--- a/drivers/net/wireless/marvell/libertas/cfg.c
+++ b/drivers/net/wireless/marvell/libertas/cfg.c
@@ -273,6 +273,10 @@ add_ie_rates(u8 *tlv, const u8 *ie, int *nrates)
 	int hw, ap, ap_max = ie[1];
 	u8 hw_rate;
 
+	if (ap_max > MAX_RATES) {
+		lbs_deb_assoc("invalid rates\n");
+		return tlv;
+	}
 	/* Advance past IE header */
 	ie += 2;
 
@@ -1777,6 +1781,10 @@ static int lbs_ibss_join_existing(struct lbs_private *priv,
 	} else {
 		int hw, i;
 		u8 rates_max = rates_eid[1];
+		if (rates_max > MAX_RATES) {
+			lbs_deb_join("invalid rates");
+			goto out;
+		}
 		u8 *rates = cmd.bss.rates;
 		for (hw = 0; hw < ARRAY_SIZE(lbs_rates); hw++) {
 			u8 hw_rate = lbs_rates[hw].bitrate / 5;
-- 
2.17.1


_______________________________________________
libertas-dev mailing list
libertas-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/libertas-dev
