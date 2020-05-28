Return-Path: <libertas-dev-bounces+lists+libertas-dev=lfdr.de@lists.infradead.org>
X-Original-To: lists+libertas-dev@lfdr.de
Delivered-To: lists+libertas-dev@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DF0B91E60DF
	for <lists+libertas-dev@lfdr.de>; Thu, 28 May 2020 14:30:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=drTmxk5ftDcdR6mMacAGJlPfkPiHig+DQoOqr/TK6xA=; b=sIb/BE5h7EBw+z
	m5cCgLxB281SwQVcjJo1T/I9ZKynaH+379fGvLQaN9GGACtm3NSB4cJX0PWgF5ddsWVddNYBs1/9B
	u9Qv00UUsWJdctSR0vxmhGTnegcq2oAUJGtUJdORdIg7iy89VPaiIGw6NmzdJpu9M+h+k3Otdb7DT
	zgjKWnmWCljS3aLvNr3EoKIkDIaaVvpRmR5QDi+H2xhfgu1J6gRfxoC3JYq6cNmrpZT7yEv8Ptrj+
	5eF7+42QjXOnaAEJF6Mmd2VDmBvdUVjgEvQZjd8vsHdJyVBHUN8Um+ndbIHUAi6pCIEKHhL2hHERh
	UvMjYxx4JqlrWKCKJ4Gw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeHg3-0004Dw-6w; Thu, 28 May 2020 12:30:27 +0000
Received: from mail-eopbgr00045.outbound.protection.outlook.com ([40.107.0.45]
 helo=EUR02-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeHfe-0001Zj-2I; Thu, 28 May 2020 12:30:03 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=M/neEts4IRoHIA53Ys/MCxFwmipnW+B3oLKSvxWcwih62+Rq33HlNkAD76dNotUfpA5kG+LMXRUv8uKV3JOMe5GNWAEEhVmnlKHj9CPQY+sFyXOytzqx7RDydUhcsridjhoD+davkN7b9OhH7Z/0gvo/u3PqxHFJsDgGn6/LXi0MwsDf83PMe8sbJd2k3QezEXOh1+Wdb/FlmlQCz37GPrmN81QPtXC72eKoPLTzQDbX6aMiowrzhpu61W2vw1nDLLBjDp6hrt8urywnzrjkYh1mPsswwMK6Uc3tyrBcohWaaCe/tuH1UV712oUaCtuPONYd2bkkY9NgKnmRfhvnvA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=WBcSJbIEBJfHG6JkjlBKglECZTnG5lxT6oUGh9Up16s=;
 b=EZosNKgW62mkrL3KXrRcdilmDO5MA9QIPf602ChVVgLtRVfhkzHi2VyPHqDSf3wUI9edb3xuaTzogm+GRu6l+yjR/iDryFgWSHXfIVsQGPpow0rokQQg4Y6LNPOkVNgFA9MdlCkCdEdJgZ9XhUaTJZ6yF2qzEXnjLc0yZez61HxzyAS41SuEWM48tNCDc/JIDpvEHUHzXXwsX8XmLe0FRHNGYziRJUDMqU2JOSGnvMjs0CJTfyLN+Njc2n4XfidhhYQw10q3VPkqIVcHpajr9Z2jgU61ReS0KSy8q0kMbV3ILQaDqC3I+KKNkMw7hwWCuNIOFae3udYTWHWDdUkK/g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=WBcSJbIEBJfHG6JkjlBKglECZTnG5lxT6oUGh9Up16s=;
 b=TehauTIDp65qgFW861gYdt0BKRFwnc1BBEFW0XWZ30INAWyWqGaM9w86i57iYgrPKd1zVqpYczoYZ1soMCrbhWMUZW+KpkB9EN439HW+k2LXfeCNJ3psHXnzrIOzo3nzQcX6fTf2UAd/al9/t6E6CdItV2trpaPFP2XpaPYhMsw=
Received: from VI1PR04MB4366.eurprd04.prod.outlook.com (2603:10a6:803:3d::27)
 by VI1PR04MB6095.eurprd04.prod.outlook.com (2603:10a6:803:f7::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3021.26; Thu, 28 May
 2020 12:29:59 +0000
Received: from VI1PR04MB4366.eurprd04.prod.outlook.com
 ([fe80::8102:b59d:36b:4d09]) by VI1PR04MB4366.eurprd04.prod.outlook.com
 ([fe80::8102:b59d:36b:4d09%7]) with mapi id 15.20.3045.018; Thu, 28 May 2020
 12:29:59 +0000
From: Ganapathi Bhat <ganapathi.bhat@nxp.com>
To: =?utf-8?B?UGFsaSBSb2jDoXI=?= <pali@kernel.org>, Ulf Hansson
 <ulf.hansson@linaro.org>, "linux-mmc@vger.kernel.org"
 <linux-mmc@vger.kernel.org>
Subject: RE: [EXT] [PATCH 03/11] mmc: sdio: Move SDIO IDs from mwifiex driver
 to common include file
Thread-Topic: [EXT] [PATCH 03/11] mmc: sdio: Move SDIO IDs from mwifiex driver
 to common include file
Thread-Index: AQHWMEew+vNcd55gXUylIg6AR4GDWKi9dpdw
Date: Thu, 28 May 2020 12:29:59 +0000
Message-ID: <VI1PR04MB43660A0A5C5E2FE1E08608298F8E0@VI1PR04MB4366.eurprd04.prod.outlook.com>
References: <20200522144412.19712-1-pali@kernel.org>
 <20200522144412.19712-4-pali@kernel.org>
In-Reply-To: <20200522144412.19712-4-pali@kernel.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: kernel.org; dkim=none (message not signed)
 header.d=none;kernel.org; dmarc=none action=none header.from=nxp.com;
x-originating-ip: [103.54.18.180]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 7bc52203-379e-48c4-be2f-08d80302d653
x-ms-traffictypediagnostic: VI1PR04MB6095:
x-microsoft-antispam-prvs: <VI1PR04MB60956E1ACB0388D0C21E8BDB8F8E0@VI1PR04MB6095.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4714;
x-forefront-prvs: 0417A3FFD2
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: NVAAIv193XbvMkpPtSJlrEPSHdUXXPbGcOpo8RUQWqO9K1DIhQMF1zCF/FMFyhd1ArpDWtdf6AdzyPeXrqA0jC8hJ580VxQAWIpIlFQhHmfkESd4oy3X5RQCvNXfuCJwsxkZ9yScXRGGVd1xmPJfy1WGzSnRhUXvd81NGCWeF/i60+KI06CB0KIEePvjIYkeAqtjCPNaEIIjWceZKm4Dn6DQ1DTU5VRPRkY5lJADlGKuOg+emFdmWoT4cRnJ/uVhDYWH/ONGdoxOw+VYP0pOduVUvBP5iCZ2Ejox5hNjiprdrKEo3olAMIIhLoAmhSM0cSCozOJD8sjpDvV5UtHXmg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:VI1PR04MB4366.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(39860400002)(396003)(376002)(366004)(136003)(346002)(44832011)(33656002)(316002)(55016002)(110136005)(558084003)(7416002)(8676002)(9686003)(4326008)(2906002)(8936002)(186003)(26005)(66946007)(86362001)(5660300002)(52536014)(6506007)(76116006)(66446008)(66556008)(66476007)(54906003)(478600001)(71200400001)(64756008)(7696005);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: KNm8Sc+Wi0rDSC7Xv6GJecWPongQ+qpeLIOQuCaNRBnd+s4RYG74As4DyZbs0k3rMBTalugInxtnGkNuPrfNiRWPP4U9YOteeK3eUo+4upAW2/AYBM53W7hiXaW6AYciCsr1o8fumx/f2hHh4rfauqqkXlLbtISLHXyAC+4BHB/uFPk8nbvMZ0T2Dx5lNvWLtjum+Ruqlvh1ozZDkLy4ZhbuZl1eEIlhzKvHVpozy2EMU1twxWiuJVYoFikZgUPGpFJxgxcqDot6ou7H9S4AHuJDdRiErsOPkH5z3IfiC75JwVTrLe5GNM5ZgSvdT1fSC7m9EZu38wR/cg7NUD8cBt+Ajs09AbuHGloA1n7hXV97jsFrxGPUB8jx8jMzu2HmQ+/PmmkylAI63eVFLgJD1+75k670gdJtM28n64YQaME06n4zKAu0RUgaEE1cVONWDhDN5wYSS3dOKrIL8ZrAcq2bVr3wA9zIEhhpdxAIoyM=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7bc52203-379e-48c4-be2f-08d80302d653
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 May 2020 12:29:59.2696 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: lpN5ua/TL3sPslakomFIousXEX1pFIkE0jqA2ooiqkLb9ZLEmN/hnU5/CXmMSAZZFpjgZT9NvwA61Wgx4knGLA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB6095
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200528_053002_172553_C912FE86 
X-CRM114-Status: UNSURE (   6.34  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [40.107.0.45 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.0.45 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: "brcm80211-dev-list.pdl@broadcom.com"
 <brcm80211-dev-list.pdl@broadcom.com>,
 "libertas-dev@lists.infradead.org" <libertas-dev@lists.infradead.org>,
 Xinming Hu <huxinming820@gmail.com>,
 "linux-wireless@vger.kernel.org" <linux-wireless@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Amitkumar Karwar <amitkarwar@gmail.com>,
 =?utf-8?B?TWFyZWsgQmVow7pu?= <marek.behun@nic.cz>,
 "ath10k@lists.infradead.org" <ath10k@lists.infradead.org>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 "brcm80211-dev-list@cypress.com" <brcm80211-dev-list@cypress.com>,
 Kalle Valo <kvalo@codeaurora.org>,
 "b43-dev@lists.infradead.org" <b43-dev@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "libertas-dev" <libertas-dev-bounces@lists.infradead.org>
Errors-To: libertas-dev-bounces+lists+libertas-dev=lfdr.de@lists.infradead.org

Hi Pali,

> Add _WLAN suffix to macro names for consistency with other Marvell macros.
> These IDs represents wlan function of combo bt/wlan cards. Other functions
> of these cards have different IDs.
> 
OK, thanks for the cleanup change;

Acked-by: Ganapathi Bhat <ganapathi.bhat@nxp.com>
_______________________________________________
libertas-dev mailing list
libertas-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/libertas-dev
