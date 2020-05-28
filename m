Return-Path: <libertas-dev-bounces+lists+libertas-dev=lfdr.de@lists.infradead.org>
X-Original-To: lists+libertas-dev@lfdr.de
Delivered-To: lists+libertas-dev@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B192F1E60D6
	for <lists+libertas-dev@lfdr.de>; Thu, 28 May 2020 14:28:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uFivbjXMtv2dvZNGfn22ztc4MWoZGO7VltP4t8I0HKs=; b=uTP1O1ZXFQcVgb
	CdrCsRxnIVCjH/eG/HQ7qSIaTS8iXdkseJc+6sbKtT4jzTMtcjdYgDk4l2JVYC/qycssp5utYOxcy
	DT4Sl4G74Xxwtzlip8bDcnP3SLKLqca0j30Eh7YsRnLMR0l1xeJkkIQO0BSuAF1bT4z6YAlB5DeVT
	gKkR370PJkCJoN1GvO5pgmKbE8Qy2kl0o7GWHJBpO+uTomaFCNSUz2J7y8NSv9cM7tqZmQxkwrpDq
	gKGGrH52VieM0IVrh60j6a7NSRG1/XQnPT+qu9rhGg+m3ltWSslVoE5KPU6RiSstuuWVQU5JBN5dO
	sVR6ln3TZmhlbusSS0/w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeHdq-0001Kg-8a; Thu, 28 May 2020 12:28:10 +0000
Received: from mail-eopbgr60083.outbound.protection.outlook.com ([40.107.6.83]
 helo=EUR04-DB3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeHdk-0001G0-9e; Thu, 28 May 2020 12:28:05 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=CZJOBhsSD7G97hU6jHwRMUk36yf0G6ENxvyZ7+nvgABCq2/e+q+OWD/ZJsRUccDcuxUHCbbJYUpXfj8DP9ThzrguxCM2nc7zbec1qt0P1+VlggSggnSscIUXKb0y2MUYohLCQwgcalT9Mt1EPi09FsYoVxSRH3aQEiXdwiqpBlwECYrkWrl7OgCbjRPfWDH4raYyth0gpulQ9OlUJO9WFq8Q6158rwxtdeBGToDQDxLzKWpHKqGFs0cloqQQkHvvXLvnckibdgOI8i8DyjXK/GpCJYUhbCqEmLMja56J5fEfuBZk9alR8uM4yVyfp0si1ApmzeLzUoat+OLSxL+wDg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=sxUhPFjBba9j9NTmmRFl38ADoehkBBskOCr6VfVPWeA=;
 b=c4inaiMmU9aePCPr3U0CEyChGqRw6o9EDkU/5Vo5wgevLW6JSQYkYRuQn4baB5VOTMT7WsZFoAQ4v48SZ0Il65hA6qDm085yRckZxE2OJrA4dcArqELAxLwP5Lp61vPymabE60nOZLxZ6i/zWboNjcUOagxXRyU8CgZBjgD+6cV4JznkKiS4DWoeHdq6QVVvapif2HEsQQYs2OMSWQuRlAIDKUWRcnmPdn2cqKCFRC8DBAip6ZTkxYFHwK6Bja4lCTZdHD6CeFl0VYZhZFi3gKP4g/GhiZMiymeMQ2BCETl2PCXzZYdlxXRU7WBeQJD+8k64lvx6myIfB31zPct8Ug==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=sxUhPFjBba9j9NTmmRFl38ADoehkBBskOCr6VfVPWeA=;
 b=L7xsA4H12ldOsLrFMhBAuzqnVTURUoqnr+gknjVeYntsH/x/nbd6gOJM6nfWqYVbauhDYo5qwm2aeKMldgSfYZgrrhex+m8VtgRAH4q5flf8rUFp7k/O7/MGrbJrZw6ml/Qy+GQQSOwQ8oyYrgS+amEYvEUPPTykUIHo2DlU4WQ=
Received: from VI1PR04MB4366.eurprd04.prod.outlook.com (2603:10a6:803:3d::27)
 by VI1PR04MB6095.eurprd04.prod.outlook.com (2603:10a6:803:f7::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3021.26; Thu, 28 May
 2020 12:27:59 +0000
Received: from VI1PR04MB4366.eurprd04.prod.outlook.com
 ([fe80::8102:b59d:36b:4d09]) by VI1PR04MB4366.eurprd04.prod.outlook.com
 ([fe80::8102:b59d:36b:4d09%7]) with mapi id 15.20.3045.018; Thu, 28 May 2020
 12:27:59 +0000
From: Ganapathi Bhat <ganapathi.bhat@nxp.com>
To: =?utf-8?B?UGFsaSBSb2jDoXI=?= <pali@kernel.org>, Ulf Hansson
 <ulf.hansson@linaro.org>, "linux-mmc@vger.kernel.org"
 <linux-mmc@vger.kernel.org>
Subject: RE: [EXT] [PATCH 04/11] mmc: sdio: Move SDIO IDs from btmrvl driver
 to common include file
Thread-Topic: [EXT] [PATCH 04/11] mmc: sdio: Move SDIO IDs from btmrvl driver
 to common include file
Thread-Index: AQHWMEeyh682z/ig0kGzv14HIh2QU6i9deIQ
Date: Thu, 28 May 2020 12:27:59 +0000
Message-ID: <VI1PR04MB4366DC81FF6F107CDA1A658B8F8E0@VI1PR04MB4366.eurprd04.prod.outlook.com>
References: <20200522144412.19712-1-pali@kernel.org>
 <20200522144412.19712-5-pali@kernel.org>
In-Reply-To: <20200522144412.19712-5-pali@kernel.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: kernel.org; dkim=none (message not signed)
 header.d=none;kernel.org; dmarc=none action=none header.from=nxp.com;
x-originating-ip: [103.54.18.180]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 230124b8-4ca4-4d1a-0da0-08d803028f1c
x-ms-traffictypediagnostic: VI1PR04MB6095:
x-microsoft-antispam-prvs: <VI1PR04MB6095F3D40CC36660FA73A7848F8E0@VI1PR04MB6095.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:5236;
x-forefront-prvs: 0417A3FFD2
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: v5gYnGTpkDezkHfd0x7wrYWPe5b9jgVoDH7lHXnjLDXAg8WSZ4I/rBYy9KpD2O55MgD1YwaOehYwTdDI/6E6Eq185spaq17qhQLFVMzLwD+P1xCuVyNEDxOf6FfMTVHFNZ5108sgk3ttvCkqqrteBNjw+S9EW00mUgX/emlUkuYfXTK+o9Z6jwcc0Nji2TBXVJxrIh7yoyiGY/jmAQQoiwdArJZn0edK/ujyK+q1jIGK3hs2h0VyuAWpW+6zjA34DCOO89AsqRAgiZe8//mXQBNr07XCIQ0S2nrtWU+EJyQMBnIRRcfrGInKiaTSrTmb9ZZlCgC2lCF7NTRdPquEl48sxbY5arJdOX9zqXGwae8dNGvHDeN68CD8HJleQmMB
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:VI1PR04MB4366.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(39860400002)(396003)(376002)(366004)(136003)(346002)(44832011)(33656002)(316002)(55016002)(110136005)(558084003)(7416002)(8676002)(9686003)(4326008)(2906002)(8936002)(186003)(26005)(66946007)(86362001)(5660300002)(52536014)(6506007)(76116006)(66446008)(66556008)(66476007)(54906003)(478600001)(71200400001)(64756008)(7696005)(40753002);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: pMsDcOYGepsi9ye1X4VLuFQcUp6AwMHjvDkLIw+NVcs3SVhhCnuB2hyMFGgcCsoevvVq68aZWzrQ7xBXyERHTnhPsv1lltA9LxcsgMMV65eommKY1NZdmwHXtBVAwfa7saaF8fCdDH6qhGlfoWqV6EalTymzPzpDQQM0qe3cKGKqnRR7npjQnEM2xFX5XPMZW5yy/pyBig9y4r0G/8ZzllysIzz3Ij7a4tlIwQJ58MonP4HmdWcX1YV95t/L3ScsxjUJn/A/Ijhj9nibWKVZOl0nGaGbqDhtvvI9gFuN0YQDjUYMohfL5I+PYOskuqWwZXlOSKlqkIhAJIQIOC34WRSXIYb+uKsQQA5r+AjNsI5uiunbo+0HmbntqZeEDQJLC78pQ83QWBuOfUilGOD9HSpMjTfGqApGHEnFPNpePadEZtRJ+B6XyqhZIM8AnqWsf5xMf2bJyW/Qfmn6LR4DHRKC811W+LqB3ShqghYAZxI=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 230124b8-4ca4-4d1a-0da0-08d803028f1c
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 May 2020 12:27:59.7334 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: a5IZeovv3ghdmaaRezjp5Od7sctFpha2SfibEXlAmbqERQyE5R1ccYIrW3KZ1F9h/GmJgCO42oY1hD0GDLYxUA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB6095
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200528_052804_416986_10D3F485 
X-CRM114-Status: UNSURE (   5.56  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [40.107.6.83 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.6.83 listed in wl.mailspike.net]
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

> Define appropriate macro names for consistency with other Marvell macros.
> 
Thanks for the change;

Acked-by: Ganapathi Bhat <ganapathi.bhat@nxp.com>
_______________________________________________
libertas-dev mailing list
libertas-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/libertas-dev
