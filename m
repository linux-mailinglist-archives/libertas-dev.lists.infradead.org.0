Return-Path: <libertas-dev-bounces+lists+libertas-dev=lfdr.de@lists.infradead.org>
X-Original-To: lists+libertas-dev@lfdr.de
Delivered-To: lists+libertas-dev@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 67C0656A5B
	for <lists+libertas-dev@lfdr.de>; Wed, 26 Jun 2019 15:26:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4Iy3huWTpQay89PDvIAVMIZzZcRQebelimeRqNupBiA=; b=SqfqMynR6j5Jyf
	rxINuxxmm/EC4jsSvLND6XMw2ZmbalXZpGx46zH2MAG2pLo1860JkUa7r5+Y9G6RP0Rv6wLXxzzeV
	/fkAK/4K+H+ggLgVtu7++tGos+ol9o/9Ww1i8uwuSkC0pvXNFsI9tUElQtoAIlEE1s2e8HdrhpgVN
	hBZk7arBvaQinWE0CczoA8E0WrI14V6VNhh8u58CYSTa3kCpFIOEgMskEb0tbxwEF8dD5SFMyRNOp
	aChSDbqrExGBHolFc2Hplb25ICSjn6ehnYSYFTk8l2IR4ojmKcX7zHq+S9nnoHPM0itF7GEGWqcEc
	LOcrkazLmRXmCGT7oA7Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hg7w5-0006To-Fh; Wed, 26 Jun 2019 13:26:05 +0000
Received: from userp2120.oracle.com ([156.151.31.85])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hg7w2-0006TA-1G
 for libertas-dev@lists.infradead.org; Wed, 26 Jun 2019 13:26:03 +0000
Received: from pps.filterd (userp2120.oracle.com [127.0.0.1])
 by userp2120.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x5QDOI5i040624;
 Wed, 26 Jun 2019 13:25:57 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2018-07-02;
 bh=Jc6Kfrqo1obGKGX3hptI4aB5JIAaOzHxGxab76hqajY=;
 b=LrUnKJ1MjOtfc/B1JoNi+K6yg7FYvyTYxDiBN5Y644tafzbpJeUoz/5ikBTb2eyTqDwI
 5iSXrYGFZ6LhH35+9v3IUc+DT4xTWeTHgp6dZK7aQ8uV9OfWljf/q3Vz97ND6rOSWulv
 BaPCVEbu4BSvdUYM91GbNQfBGywSeuK1WC8+VlDEXs9hYg4Wt0HTQhSEufC4M+AQwZch
 YXfwNSq30U2BXkSByfQm9/ZEeR4uuu/xY2Sj+f37p8DZuVpSPHcTJfnLx85Xs3fyLNj1
 FrgJ8kIadtNbCGJ3SqiP4VUUrpNI8te1tOwy4XOQyWQH7yJ6qYk8290nOvIjOAVPhqT2 zQ== 
Received: from userp3020.oracle.com (userp3020.oracle.com [156.151.31.79])
 by userp2120.oracle.com with ESMTP id 2t9cyqj8n4-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 26 Jun 2019 13:25:56 +0000
Received: from pps.filterd (userp3020.oracle.com [127.0.0.1])
 by userp3020.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x5QDNRmo136851;
 Wed, 26 Jun 2019 13:23:56 GMT
Received: from userv0121.oracle.com (userv0121.oracle.com [156.151.31.72])
 by userp3020.oracle.com with ESMTP id 2tat7cttk2-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 26 Jun 2019 13:23:56 +0000
Received: from abhmp0022.oracle.com (abhmp0022.oracle.com [141.146.116.28])
 by userv0121.oracle.com (8.14.4/8.13.8) with ESMTP id x5QDNmTr019550;
 Wed, 26 Jun 2019 13:23:49 GMT
Received: from kadam (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Wed, 26 Jun 2019 06:23:48 -0700
Date: Wed, 26 Jun 2019 16:23:40 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Dan Williams <dcbw@redhat.com>
Subject: Re: [PATCH] libertas: Fix a double free in if_spi_c2h_data()
Message-ID: <20190626132340.GE28859@kadam>
References: <20190626100926.GD3242@mwanda>
 <be491ab35ba46111a1c90cc12b6d5ff6ea3f57e8.camel@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <be491ab35ba46111a1c90cc12b6d5ff6ea3f57e8.camel@redhat.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9299
 signatures=668687
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=563
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1810050000 definitions=main-1906260160
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9299
 signatures=668687
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1011
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=615 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1810050000
 definitions=main-1906260160
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190626_062602_210062_FAA64FAA 
X-CRM114-Status: GOOD (  11.99  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [156.151.31.85 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: Philip Rakity <prakity@yahoo.com>, libertas-dev@lists.infradead.org,
 kernel-janitors@vger.kernel.org, linux-wireless@vger.kernel.org,
 Lubomir Rintel <lkundrak@v3.sk>, Kalle Valo <kvalo@codeaurora.org>,
 Allison Randal <allison@lohutok.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "libertas-dev" <libertas-dev-bounces@lists.infradead.org>
Errors-To: libertas-dev-bounces+lists+libertas-dev=lfdr.de@lists.infradead.org

Yeah.  That looks nicer.  Could you send it as a proper patch and give
me Reported-by credit?

regards,
dan carpenter


_______________________________________________
libertas-dev mailing list
libertas-dev@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/libertas-dev
