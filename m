Return-Path: <libertas-dev-bounces+lists+libertas-dev=lfdr.de@lists.infradead.org>
X-Original-To: lists+libertas-dev@lfdr.de
Delivered-To: lists+libertas-dev@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 28C15171BF5
	for <lists+libertas-dev@lfdr.de>; Thu, 27 Feb 2020 15:07:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=zd9DaHh2/lvpq+421wkBmLav3phHa/8KzkE+cAe2I5U=; b=d6hLtCR5TEDz0a
	RDykSG9LBrM9oQi3Pxj8odeCYBLQVicfYZgEjWaj0UYAtRERdqDdtfwJ6jNpZ1qHzM/PF3PECCLlx
	KpUIcTCIjFX7J31BI+pUHrxyb+6zs5R5QpHCNtKHEGqqXHdn5zcjJVPYf5P6+dmaSBHKHF7dQxTWe
	dF3CBnFtvuMLwyqUDsUyfCxWghr0qUSb/3sVBjFdKvk9I9YtQZek7IYznCgdkmGv4+qoymNDYDlBk
	N8eK/wBwvgRiKQhAsoBO0FAoCeHWiNwCoRej3L7qA8JKto9cB5uBBW2XbPdqnz+HfNnHsfq4bYKje
	BUh5PZujmzN6yfD0rNpA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7Jol-000777-J9; Thu, 27 Feb 2020 14:07:11 +0000
Received: from mx0a-00128a01.pphosted.com ([148.163.135.77])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7Jog-00076k-Vp
 for libertas-dev@lists.infradead.org; Thu, 27 Feb 2020 14:07:08 +0000
Received: from pps.filterd (m0167088.ppops.net [127.0.0.1])
 by mx0a-00128a01.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 01RE56Oo019530; Thu, 27 Feb 2020 09:06:58 -0500
Received: from nwd2mta3.analog.com ([137.71.173.56])
 by mx0a-00128a01.pphosted.com with ESMTP id 2ydtrx3bry-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Thu, 27 Feb 2020 09:06:58 -0500
Received: from ASHBMBX8.ad.analog.com (ashbmbx8.ad.analog.com [10.64.17.5])
 by nwd2mta3.analog.com (8.14.7/8.14.7) with ESMTP id 01RE6vJg021702
 (version=TLSv1/SSLv3 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=FAIL); 
 Thu, 27 Feb 2020 09:06:57 -0500
Received: from ASHBMBX9.ad.analog.com (10.64.17.10) by ASHBMBX8.ad.analog.com
 (10.64.17.5) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1779.2; Thu, 27 Feb
 2020 09:06:55 -0500
Received: from zeus.spd.analog.com (10.64.82.11) by ASHBMBX9.ad.analog.com
 (10.64.17.10) with Microsoft SMTP Server id 15.1.1779.2 via Frontend
 Transport; Thu, 27 Feb 2020 09:06:55 -0500
Received: from analog.ad.analog.com ([10.48.65.180])
 by zeus.spd.analog.com (8.15.1/8.15.1) with ESMTP id 01RE6pPD029488;
 Thu, 27 Feb 2020 09:06:51 -0500
From: Sergiu Cuciurean <sergiu.cuciurean@analog.com>
To: <linux-kernel@vger.kernel.org>, <netdev@vger.kernel.org>,
 <linux-wireless@vger.kernel.org>, <libertas-dev@lists.infradead.org>,
 <kvalo@codeaurora.org>, <davem@davemloft.net>, <gregkh@linuxfoundation.org>
Subject: [PATCH] net: wireless: marvell: libertas: Use new structure for SPI
 transfer delays
Date: Thu, 27 Feb 2020 16:06:34 +0200
Message-ID: <20200227140634.9286-1-sergiu.cuciurean@analog.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-ADIRoutedOnPrem: True
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.572
 definitions=2020-02-27_04:2020-02-26,
 2020-02-27 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 mlxscore=0 bulkscore=0
 malwarescore=0 impostorscore=0 clxscore=1011 priorityscore=1501
 lowpriorityscore=0 phishscore=0 spamscore=0 adultscore=0 mlxlogscore=903
 suspectscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2001150001 definitions=main-2002270112
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200227_060707_030870_17064E24 
X-CRM114-Status: GOOD (  11.47  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [148.163.135.77 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: dcbw@redhat.com, Sergiu Cuciurean <sergiu.cuciurean@analog.com>,
 tglx@linutronix.de, allison@lohutok.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "libertas-dev" <libertas-dev-bounces@lists.infradead.org>
Errors-To: libertas-dev-bounces+lists+libertas-dev=lfdr.de@lists.infradead.org

In a recent change to the SPI subsystem [1], a new `delay` struct was added
to replace the `delay_usecs`. This change replaces the current
`delay_usecs` with `delay` for this driver.

The `spi_transfer_delay_exec()` function [in the SPI framework] makes sure
that both `delay_usecs` & `delay` are used (in this order to preserve
backwards compatibility).

[1] commit bebcfd272df6 ("spi: introduce `delay` field for
`spi_transfer` + spi_transfer_delay_exec()")

Signed-off-by: Sergiu Cuciurean <sergiu.cuciurean@analog.com>
---
 drivers/net/wireless/marvell/libertas/if_spi.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/net/wireless/marvell/libertas/if_spi.c b/drivers/net/wireless/marvell/libertas/if_spi.c
index d07fe82c557e..3c3f266bf116 100644
--- a/drivers/net/wireless/marvell/libertas/if_spi.c
+++ b/drivers/net/wireless/marvell/libertas/if_spi.c
@@ -235,8 +235,9 @@ static int spu_read(struct if_spi_card *card, u16 reg, u8 *buf, int len)
 		spi_message_add_tail(&dummy_trans, &m);
 	} else {
 		/* Busy-wait while the SPU fills the FIFO */
-		reg_trans.delay_usecs =
+		reg_trans.delay.value =
 			DIV_ROUND_UP((100 + (delay * 10)), 1000);
+		reg_trans.delay.unit = SPI_DELAY_UNIT_USECS;
 	}
 
 	/* read in data */
-- 
2.17.1


_______________________________________________
libertas-dev mailing list
libertas-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/libertas-dev
