// To parse this JSON data, do
//
//     final accountResponse = accountResponseFromMap(jsonString);

import 'dart:convert';

class AccountResponse {
    AccountResponse({
       required this.the24Hnumreward,
       required this.the24Hreward,
       required this.apiVersion,
       required this.config,
       required this.currentHashrate,
       required this.currentLuck,
       required this.hashrate,
       required this.pageSize,
       required this.payments,
       required this.paymentsTotal,
       required this.rewards,
       required this.roundShares,
       required this.sharesInvalid,
       required this.sharesStale,
       required this.sharesValid,
       required this.stats,
       required this.sumrewards,
       required this.updatedAt,
       required this.workers,
       required this.workersOffline,
       required this.workersOnline,
       required this.workersTotal,
    });

    int the24Hnumreward;
    int the24Hreward;
    int apiVersion;
    Config config;
    int currentHashrate;
    String currentLuck;
    int hashrate;
    int pageSize;
    List<Payment> payments;
    int paymentsTotal;
    List<Reward> rewards;
    int roundShares;
    int sharesInvalid;
    int sharesStale;
    int sharesValid;
    Stats stats;
    List<Sumreward> sumrewards;
    int updatedAt;
    Workers workers;
    int workersOffline;
    int workersOnline;
    int workersTotal;

    factory AccountResponse.fromJson(String str) => AccountResponse.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory AccountResponse.fromMap(Map<String, dynamic> json) => AccountResponse(
        the24Hnumreward: json["24hnumreward"],
        the24Hreward: json["24hreward"],
        apiVersion: json["apiVersion"],
        config: Config.fromMap(json["config"]),
        currentHashrate: json["currentHashrate"],
        currentLuck: json["currentLuck"],
        hashrate: json["hashrate"],
        pageSize: json["pageSize"],
        payments: List<Payment>.from(json["payments"].map((x) => Payment.fromMap(x))),
        paymentsTotal: json["paymentsTotal"],
        rewards: List<Reward>.from(json["rewards"].map((x) => Reward.fromMap(x))),
        roundShares: json["roundShares"],
        sharesInvalid: json["sharesInvalid"],
        sharesStale: json["sharesStale"],
        sharesValid: json["sharesValid"],
        stats: Stats.fromMap(json["stats"]),
        sumrewards: List<Sumreward>.from(json["sumrewards"].map((x) => Sumreward.fromMap(x))),
        updatedAt: json["updatedAt"],
        workers: Workers.fromMap(json["workers"]),
        workersOffline: json["workersOffline"],
        workersOnline: json["workersOnline"],
        workersTotal: json["workersTotal"],
    );

    Map<String, dynamic> toMap() => {
        "24hnumreward": the24Hnumreward,
        "24hreward": the24Hreward,
        "apiVersion": apiVersion,
        "config": config.toMap(),
        "currentHashrate": currentHashrate,
        "currentLuck": currentLuck,
        "hashrate": hashrate,
        "pageSize": pageSize,
        "payments": List<dynamic>.from(payments.map((x) => x.toMap())),
        "paymentsTotal": paymentsTotal,
        "rewards": List<dynamic>.from(rewards.map((x) => x.toMap())),
        "roundShares": roundShares,
        "sharesInvalid": sharesInvalid,
        "sharesStale": sharesStale,
        "sharesValid": sharesValid,
        "stats": stats.toMap(),
        "sumrewards": List<dynamic>.from(sumrewards.map((x) => x.toMap())),
        "updatedAt": updatedAt,
        "workers": workers.toMap(),
        "workersOffline": workersOffline,
        "workersOnline": workersOnline,
        "workersTotal": workersTotal,
    };
}

class Config {
    Config({
     required  this.allowedMaxPayout,
     required  this.allowedMinPayout,
     required  this.defaultMinPayout,
     required  this.ipHint,
     required  this.ipWorkerName,
     required  this.minPayout,
     required  this.paymentHubHint,
    });

    int allowedMaxPayout;
    int allowedMinPayout;
    int defaultMinPayout;
    String ipHint;
    String ipWorkerName;
    int minPayout;
    String paymentHubHint;

    factory Config.fromJson(String str) => Config.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory Config.fromMap(Map<String, dynamic> json) => Config(
        allowedMaxPayout: json["allowedMaxPayout"],
        allowedMinPayout: json["allowedMinPayout"],
        defaultMinPayout: json["defaultMinPayout"],
        ipHint: json["ipHint"],
        ipWorkerName: json["ipWorkerName"],
        minPayout: json["minPayout"],
        paymentHubHint: json["paymentHubHint"],
    );

    Map<String, dynamic> toMap() => {
        "allowedMaxPayout": allowedMaxPayout,
        "allowedMinPayout": allowedMinPayout,
        "defaultMinPayout": defaultMinPayout,
        "ipHint": ipHint,
        "ipWorkerName": ipWorkerName,
        "minPayout": minPayout,
        "paymentHubHint": paymentHubHint,
    };
}

class Payment {
    Payment({
       required this.amount,
       required this.timestamp,
       required this.tx,
       required this.txFee,
    });

    int amount;
    int timestamp;
    String tx;
    int txFee;

    factory Payment.fromJson(String str) => Payment.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory Payment.fromMap(Map<String, dynamic> json) => Payment(
        amount: json["amount"],
        timestamp: json["timestamp"],
        tx: json["tx"],
        txFee: json["txFee"],
    );

    Map<String, dynamic> toMap() => {
        "amount": amount,
        "timestamp": timestamp,
        "tx": tx,
        "txFee": txFee,
    };
}

class Reward {
    Reward({
     required   this.blockheight,
     required   this.timestamp,
     required   this.reward,
     required   this.percent,
     required   this.immature,
     required   this.orphan,
     required   this.uncle,
    });

    int blockheight;
    int timestamp;
    int reward;
    double percent;
    bool immature;
    bool orphan;
    bool uncle;

    factory Reward.fromJson(String str) => Reward.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory Reward.fromMap(Map<String, dynamic> json) => Reward(
        blockheight: json["blockheight"],
        timestamp: json["timestamp"],
        reward: json["reward"],
        percent: json["percent"].toDouble(),
        immature: json["immature"],
        orphan: json["orphan"],
        uncle: json["uncle"],
    );

    Map<String, dynamic> toMap() => {
        "blockheight": blockheight,
        "timestamp": timestamp,
        "reward": reward,
        "percent": percent,
        "immature": immature,
        "orphan": orphan,
        "uncle": uncle,
    };
}

class Stats {
    Stats({
      required this.balance,
      required this.immature,
      required this.lastShare,
      required this.paid,
      required this.pending,
    });

    int balance;
    int immature;
    int lastShare;
    int paid;
    int pending;

    factory Stats.fromJson(String str) => Stats.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory Stats.fromMap(Map<String, dynamic> json) => Stats(
        balance: json["balance"],
        immature: json["immature"],
        lastShare: json["lastShare"],
        paid: json["paid"],
        pending: json["pending"],
    );

    Map<String, dynamic> toMap() => {
        "balance": balance,
        "immature": immature,
        "lastShare": lastShare,
        "paid": paid,
        "pending": pending,
    };
}

class Sumreward {
    Sumreward({
      required  this.inverval,
      required  this.reward,
      required  this.numreward,
      required  this.name,
      required  this.offset,
    });

    int inverval;
    int reward;
    int numreward;
    String name;
    int offset;

    factory Sumreward.fromJson(String str) => Sumreward.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory Sumreward.fromMap(Map<String, dynamic> json) => Sumreward(
        inverval: json["inverval"],
        reward: json["reward"],
        numreward: json["numreward"],
        name: json["name"],
        offset: json["offset"],
    );

    Map<String, dynamic> toMap() => {
        "inverval": inverval,
        "reward": reward,
        "numreward": numreward,
        "name": name,
        "offset": offset,
    };
}

class Workers {
    Workers({
       required this.the6600Xt,
    });

    The6600Xt the6600Xt;

    factory Workers.fromJson(String str) => Workers.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory Workers.fromMap(Map<String, dynamic> json) => Workers(
        the6600Xt: The6600Xt.fromMap(json["6600XT"]),
    );

    Map<String, dynamic> toMap() => {
        "6600XT": the6600Xt.toMap(),
    };
}

class The6600Xt {
    The6600Xt({
      required  this.lastBeat,
      required  this.hr,
      required  this.offline,
      required  this.hr2,
      required  this.rhr,
      required  this.sharesValid,
      required  this.sharesInvalid,
      required  this.sharesStale,
    });

    int lastBeat;
    int hr;
    bool offline;
    int hr2;
    int rhr;
    int sharesValid;
    int sharesInvalid;
    int sharesStale;

    factory The6600Xt.fromJson(String str) => The6600Xt.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory The6600Xt.fromMap(Map<String, dynamic> json) => The6600Xt(
        lastBeat: json["lastBeat"],
        hr: json["hr"],
        offline: json["offline"],
        hr2: json["hr2"],
        rhr: json["rhr"],
        sharesValid: json["sharesValid"],
        sharesInvalid: json["sharesInvalid"],
        sharesStale: json["sharesStale"],
    );

    Map<String, dynamic> toMap() => {
        "lastBeat": lastBeat,
        "hr": hr,
        "offline": offline,
        "hr2": hr2,
        "rhr": rhr,
        "sharesValid": sharesValid,
        "sharesInvalid": sharesInvalid,
        "sharesStale": sharesStale,
    };
}
