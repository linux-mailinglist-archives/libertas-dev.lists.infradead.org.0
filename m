Return-Path: <libertas-dev-bounces+lists+libertas-dev=lfdr.de@lists.infradead.org>
X-Original-To: lists+libertas-dev@lfdr.de
Delivered-To: lists+libertas-dev@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 34B9A16B70E
	for <lists+libertas-dev@lfdr.de>; Tue, 25 Feb 2020 02:14:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=5/8nenA7FCc4V7Pz9epZbQtFptUKCuLD2JpEhHVSS84=; b=Jo7H72//GReuXx
	IybJ0HoTVFgk8E2jwttTM9fBROFKZALprOuM+ZUPsYnUNJO19a0ualdO0PN4fWYgIVJdYiLtfVpJ/
	+RksOAS+KBzbSQQKd2aiMwdv5oVvl5ZXtNhKCpWDy+wKM7751JGgJEQbXveeJxfIQHJ3IE5kxqX6T
	WSPobMOmC8ZAE9XV7eh6Rav8AaJaSYcMkiaRVphVKOm/kPNX4/nPkl/05FMjCLWk3DBcZoOqn3oao
	SdzygYAguyfDAufIilU9yRPTxvBSksRFtsIv1n5LR9iLesCn0ZnkUV3DHLu6dN8hxAVwcbZr0enE4
	RKAP3od8yUmmZpS+JxIg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6Ont-0000Qh-4p; Tue, 25 Feb 2020 01:14:29 +0000
Received: from gateway36.websitewelcome.com ([50.116.125.2])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6Onn-0000QJ-7M
 for libertas-dev@lists.infradead.org; Tue, 25 Feb 2020 01:14:25 +0000
Received: from cm16.websitewelcome.com (cm16.websitewelcome.com [100.42.49.19])
 by gateway36.websitewelcome.com (Postfix) with ESMTP id 12EA5400CA334
 for <libertas-dev@lists.infradead.org>; Mon, 24 Feb 2020 18:29:06 -0600 (CST)
Received: from gator4166.hostgator.com ([108.167.133.22]) by cmsmtp with SMTP
 id 6OnljccbK8vkB6OnljY5sh; Mon, 24 Feb 2020 19:14:21 -0600
X-Authority-Reason: nr=8
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=embeddedor.com; s=default; h=Content-Type:MIME-Version:Message-ID:Subject:
 Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=mgdZsrA1WaP1VFkgXWleWTQSkyBW12WU43wlKGK1Mek=; b=MzQWfuTDQ8qn/8fc6G5HG31Hqj
 a3i4dkHukioCThB0n3AGbMFj6r5SKwNVG0mCcHBMWzS7XHpnlC/6HLl7vz7TAusR8acrIilDNYiu+
 Jl7joiIHUEDok6C0JdOX0m0tKetJG7QpsqErmrAPk3yJweMpv8KgzgCRyC16dGbB3nV8eBBfSvjpU
 LElPIek4Q0kEWLlh69NpxpRruq/EMvPeDfbcf0DgJA99IDJvb35E5x3fFEEbsOPnKywdwUNnQx8wi
 jSk3kb1QY3JJ7pd1n9CY7u2h5hTFiQBfWXg44T4kZ9AQYwcLWBtePmrKKwi0hU7lIdlpPdBXJN6kc
 W+zf4xeQ==;
Received: from [201.166.190.58] (port=58548 helo=embeddedor)
 by gator4166.hostgator.com with esmtpa (Exim 4.92)
 (envelope-from <gustavo@embeddedor.com>)
 id 1j6Onk-002tqM-5a; Mon, 24 Feb 2020 19:14:20 -0600
Date: Mon, 24 Feb 2020 19:17:09 -0600
From: "Gustavo A. R. Silva" <gustavo@embeddedor.com>
To: Kalle Valo <kvalo@codeaurora.org>, "David S. Miller" <davem@davemloft.net>
Subject: [PATCH][next] libertas: Replace zero-length array with
 flexible-array member
Message-ID: <20200225011709.GA601@embeddedor>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)
X-AntiAbuse: This header was added to track abuse,
 please include it with any abuse report
X-AntiAbuse: Primary Hostname - gator4166.hostgator.com
X-AntiAbuse: Original Domain - lists.infradead.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - embeddedor.com
X-BWhitelist: no
X-Source-IP: 201.166.190.58
X-Source-L: No
X-Exim-ID: 1j6Onk-002tqM-5a
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: (embeddedor) [201.166.190.58]:58548
X-Source-Auth: gustavo@embeddedor.com
X-Email-Count: 14
X-Source-Cap: Z3V6aWRpbmU7Z3V6aWRpbmU7Z2F0b3I0MTY2Lmhvc3RnYXRvci5jb20=
X-Local-Domain: yes
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200224_171423_361004_315E9E05 
X-CRM114-Status: UNSURE (   7.54  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [50.116.125.2 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: netdev@vger.kernel.org, "Gustavo A. R. Silva" <gustavo@embeddedor.com>,
 linux-wireless@vger.kernel.org, linux-kernel@vger.kernel.org,
 libertas-dev@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "libertas-dev" <libertas-dev-bounces@lists.infradead.org>
Errors-To: libertas-dev-bounces+lists+libertas-dev=lfdr.de@lists.infradead.org

The current codebase makes use of the zero-length array language
extension to the C90 standard, but the preferred mechanism to declare
variable-length types such as these ones is a flexible array member[1][2],
introduced in C99:

struct foo {
        int stuff;
        struct boo array[];
};

By making use of the mechanism above, we will get a compiler warning
in case the flexible array does not occur last in the structure, which
will help us prevent some kind of undefined behavior bugs from being
inadvertently introduced[3] to the codebase from now on.

Also, notice that, dynamic memory allocations won't be affected by
this change:

"Flexible array members have incomplete type, and so the sizeof operator
may not be applied. As a quirk of the original implementation of
zero-length arrays, sizeof evaluates to zero."[1]

This issue was found with the help of Coccinelle.

[1] https://gcc.gnu.org/onlinedocs/gcc/Zero-Length.html
[2] https://github.com/KSPP/linux/issues/21
[3] commit 76497732932f ("cxgb3/l2t: Fix undefined behaviour")

Signed-off-by: Gustavo A. R. Silva <gustavo@embeddedor.com>
---
 drivers/net/wireless/marvell/libertas/host.h    | 4 ++--
 drivers/net/wireless/marvell/libertas/if_sdio.c | 2 +-
 drivers/net/wireless/marvell/libertas/if_spi.c  | 2 +-
 drivers/net/wireless/marvell/libertas/if_usb.h  | 2 +-
 4 files changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/net/wireless/marvell/libertas/host.h b/drivers/net/wireless/marvell/libertas/host.h
index a4fc3f79bb17..dfa22468b14a 100644
--- a/drivers/net/wireless/marvell/libertas/host.h
+++ b/drivers/net/wireless/marvell/libertas/host.h
@@ -461,7 +461,7 @@ struct cmd_ds_802_11_scan {
 
 	uint8_t bsstype;
 	uint8_t bssid[ETH_ALEN];
-	uint8_t tlvbuffer[0];
+	uint8_t tlvbuffer[];
 } __packed;
 
 struct cmd_ds_802_11_scan_rsp {
@@ -469,7 +469,7 @@ struct cmd_ds_802_11_scan_rsp {
 
 	__le16 bssdescriptsize;
 	uint8_t nr_sets;
-	uint8_t bssdesc_and_tlvbuffer[0];
+	uint8_t bssdesc_and_tlvbuffer[];
 } __packed;
 
 struct cmd_ds_802_11_get_log {
diff --git a/drivers/net/wireless/marvell/libertas/if_sdio.c b/drivers/net/wireless/marvell/libertas/if_sdio.c
index 30f1025ecb9b..acf61b93b782 100644
--- a/drivers/net/wireless/marvell/libertas/if_sdio.c
+++ b/drivers/net/wireless/marvell/libertas/if_sdio.c
@@ -103,7 +103,7 @@ MODULE_FIRMWARE("sd8688.bin");
 struct if_sdio_packet {
 	struct if_sdio_packet	*next;
 	u16			nb;
-	u8			buffer[0] __attribute__((aligned(4)));
+	u8			buffer[] __aligned(4);
 };
 
 struct if_sdio_card {
diff --git a/drivers/net/wireless/marvell/libertas/if_spi.c b/drivers/net/wireless/marvell/libertas/if_spi.c
index d07fe82c557e..3625baa66d3e 100644
--- a/drivers/net/wireless/marvell/libertas/if_spi.c
+++ b/drivers/net/wireless/marvell/libertas/if_spi.c
@@ -35,7 +35,7 @@
 struct if_spi_packet {
 	struct list_head		list;
 	u16				blen;
-	u8				buffer[0] __attribute__((aligned(4)));
+	u8				buffer[] __aligned(4);
 };
 
 struct if_spi_card {
diff --git a/drivers/net/wireless/marvell/libertas/if_usb.h b/drivers/net/wireless/marvell/libertas/if_usb.h
index 8dc14bec3e16..7d0daeb33c3f 100644
--- a/drivers/net/wireless/marvell/libertas/if_usb.h
+++ b/drivers/net/wireless/marvell/libertas/if_usb.h
@@ -91,7 +91,7 @@ struct fwheader {
 struct fwdata {
 	struct fwheader hdr;
 	__le32 seqnum;
-	uint8_t data[0];
+	uint8_t data[];
 };
 
 /* fwsyncheader */
-- 
2.25.0


_______________________________________________
libertas-dev mailing list
libertas-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/libertas-dev
