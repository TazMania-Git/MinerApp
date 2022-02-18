// // To parse this JSON data, do
// //
// //     final movieModule = movieModuleFromMap(jsonString);

// import 'package:meta/meta.dart';
// import 'dart:convert';

// class MovieModule {
//     MovieModule({
//         required this.the24Hnumreward,
//         required this.the24Hreward,
//         required this.apiVersion,
//         required this.config,
//         required this.currentHashrate,
//         required this.currentLuck,
//         required this.hashrate,
//         required this.pageSize,
//         required this.payments,
//         required this.paymentsTotal,
//         required this.rewards,
//         required this.roundShares,
//         required this.sharesInvalid,
//         required this.sharesStale,
//         required this.sharesValid,
//         required this.stats,
//         required this.sumrewards,
//         required this.updatedAt,
//         required this.workers,
//         required this.workersOffline,
//         required this.workersOnline,
//         required this.workersTotal,
//     });

//     int the24Hnumreward;
//     int the24Hreward;
//     int apiVersion;
//     Config config;
//     int currentHashrate;
//     String currentLuck;
//     int hashrate;
//     int pageSize;
//     List<Payment> payments;
//     int paymentsTotal;
//     List<Reward> rewards;
//     int roundShares;
//     int sharesInvalid;
//     int sharesStale;
//     int sharesValid;
//     Stats stats;
//     List<Sumreward> sumrewards;
//     int updatedAt;
//     Workers workers;
//     int workersOffline;
//     int workersOnline;
//     int workersTotal;

//     factory MovieModule.fromJson(String str) => MovieModule.fromMap(json.decode(str));

//     String toJson() => json.encode(toMap());

//     factory MovieModule.fromMap(Map<String, dynamic> json) => MovieModule(
//         the24Hnumreward: json["24hnumreward"] == null ? null : json["24hnumreward"],
//         the24Hreward: json["24hreward"] == null ? null : json["24hreward"],
//         apiVersion: json["apiVersion"] == null ? null : json["apiVersion"],
//         config: json["config"] == null ? null : Config.fromMap(json["config"]),
//         currentHashrate: json["currentHashrate"] == null ? null : json["currentHashrate"],
//         currentLuck: json["currentLuck"] == null ? null : json["currentLuck"],
//         hashrate: json["hashrate"] == null ? null : json["hashrate"],
//         pageSize: json["pageSize"] == null ? null : json["pageSize"],
//         payments: json["payments"] == null ? null : List<Payment>.from(json["payments"].map((x) => Payment.fromMap(x))),
//         paymentsTotal: json["paymentsTotal"] == null ? null : json["paymentsTotal"],
//         rewards: json["rewards"] == null ? null : List<Reward>.from(json["rewards"].map((x) => Reward.fromMap(x))),
//         roundShares: json["roundShares"] == null ? null : json["roundShares"],
//         sharesInvalid: json["sharesInvalid"] == null ? null : json["sharesInvalid"],
//         sharesStale: json["sharesStale"] == null ? null : json["sharesStale"],
//         sharesValid: json["sharesValid"] == null ? null : json["sharesValid"],
//         stats: json["stats"] == null ? null : Stats.fromMap(json["stats"]),
//         sumrewards: json["sumrewards"] == null ? null : List<Sumreward>.from(json["sumrewards"].map((x) => Sumreward.fromMap(x))),
//         updatedAt: json["updatedAt"] == null ? null : json["updatedAt"],
//         workers: json["workers"] == null ? null : Workers.fromMap(json["workers"]),
//         workersOffline: json["workersOffline"] == null ? null : json["workersOffline"],
//         workersOnline: json["workersOnline"] == null ? null : json["workersOnline"],
//         workersTotal: json["workersTotal"] == null ? null : json["workersTotal"],
//     );

//     Map<String, dynamic> toMap() => {
//         "24hnumreward": the24Hnumreward == null ? null : the24Hnumreward,
//         "24hreward": the24Hreward == null ? null : the24Hreward,
//         "apiVersion": apiVersion == null ? null : apiVersion,
//         "config": config == null ? null : config.toMap(),
//         "currentHashrate": currentHashrate == null ? null : currentHashrate,
//         "currentLuck": currentLuck == null ? null : currentLuck,
//         "hashrate": hashrate == null ? null : hashrate,
//         "pageSize": pageSize == null ? null : pageSize,
//         "payments": payments == null ? null : List<dynamic>.from(payments.map((x) => x.toMap())),
//         "paymentsTotal": paymentsTotal == null ? null : paymentsTotal,
//         "rewards": rewards == null ? null : List<dynamic>.from(rewards.map((x) => x.toMap())),
//         "roundShares": roundShares == null ? null : roundShares,
//         "sharesInvalid": sharesInvalid == null ? null : sharesInvalid,
//         "sharesStale": sharesStale == null ? null : sharesStale,
//         "sharesValid": sharesValid == null ? null : sharesValid,
//         "stats": stats == null ? null : stats.toMap(),
//         "sumrewards": sumrewards == null ? null : List<dynamic>.from(sumrewards.map((x) => x.toMap())),
//         "updatedAt": updatedAt == null ? null : updatedAt,
//         "workers": workers == null ? null : workers.toMap(),
//         "workersOffline": workersOffline == null ? null : workersOffline,
//         "workersOnline": workersOnline == null ? null : workersOnline,
//         "workersTotal": workersTotal == null ? null : workersTotal,
//     };
// }

// class Config {
//     Config({
//         required this.allowedMaxPayout,
//         required this.allowedMinPayout,
//         required this.defaultMinPayout,
//         required this.ipHint,
//         required this.ipWorkerName,
//         required this.minPayout,
//         required this.paymentHubHint,
//     });

//     int allowedMaxPayout;
//     int allowedMinPayout;
//     int defaultMinPayout;
//     String ipHint;
//     String ipWorkerName;
//     int minPayout;
//     String paymentHubHint;

//     factory Config.fromJson(String str) => Config.fromMap(json.decode(str));

//     String toJson() => json.encode(toMap());

//     factory Config.fromMap(Map<String, dynamic> json) => Config(
//         allowedMaxPayout: json["allowedMaxPayout"] == null ? null : json["allowedMaxPayout"],
//         allowedMinPayout: json["allowedMinPayout"] == null ? null : json["allowedMinPayout"],
//         defaultMinPayout: json["defaultMinPayout"] == null ? null : json["defaultMinPayout"],
//         ipHint: json["ipHint"] == null ? null : json["ipHint"],
//         ipWorkerName: json["ipWorkerName"] == null ? null : json["ipWorkerName"],
//         minPayout: json["minPayout"] == null ? null : json["minPayout"],
//         paymentHubHint: json["paymentHubHint"] == null ? null : json["paymentHubHint"],
//     );

//     Map<String, dynamic> toMap() => {
//         "allowedMaxPayout": allowedMaxPayout == null ? null : allowedMaxPayout,
//         "allowedMinPayout": allowedMinPayout == null ? null : allowedMinPayout,
//         "defaultMinPayout": defaultMinPayout == null ? null : defaultMinPayout,
//         "ipHint": ipHint == null ? null : ipHint,
//         "ipWorkerName": ipWorkerName == null ? null : ipWorkerName,
//         "minPayout": minPayout == null ? null : minPayout,
//         "paymentHubHint": paymentHubHint == null ? null : paymentHubHint,
//     };
// }

// class Payment {
//     Payment({
//         required this.amount,
//         required this.timestamp,
//         required this.tx,
//         required this.txFee,
//     });

//     int amount;
//     int timestamp;
//     String tx;
//     int txFee;

//     factory Payment.fromJson(String str) => Payment.fromMap(json.decode(str));

//     String toJson() => json.encode(toMap());

//     factory Payment.fromMap(Map<String, dynamic> json) => Payment(
//         amount: json["amount"] == null ? null : json["amount"],
//         timestamp: json["timestamp"] == null ? null : json["timestamp"],
//         tx: json["tx"] == null ? null : json["tx"],
//         txFee: json["txFee"] == null ? null : json["txFee"],
//     );

//     Map<String, dynamic> toMap() => {
//         "amount": amount == null ? null : amount,
//         "timestamp": timestamp == null ? null : timestamp,
//         "tx": tx == null ? null : tx,
//         "txFee": txFee == null ? null : txFee,
//     };
// }

// class Reward {
//     Reward({
//         required this.blockheight,
//         required this.timestamp,
//         required this.reward,
//         required this.percent,
//         required this.immature,
//         required this.orphan,
//         required this.uncle,
//     });

//     int blockheight;
//     int timestamp;
//     int reward;
//     double percent;
//     bool immature;
//     bool orphan;
//     bool uncle;

//     factory Reward.fromJson(String str) => Reward.fromMap(json.decode(str));

//     String toJson() => json.encode(toMap());

//     factory Reward.fromMap(Map<String, dynamic> json) => Reward(
//         blockheight: json["blockheight"] == null ? null : json["blockheight"],
//         timestamp: json["timestamp"] == null ? null : json["timestamp"],
//         reward: json["reward"] == null ? null : json["reward"],
//         percent: json["percent"] == null ? null : json["percent"].toDouble(),
//         immature: json["immature"] == null ? null : json["immature"],
//         orphan: json["orphan"] == null ? null : json["orphan"],
//         uncle: json["uncle"] == null ? null : json["uncle"],
//     );

//     Map<String, dynamic> toMap() => {
//         "blockheight": blockheight == null ? null : blockheight,
//         "timestamp": timestamp == null ? null : timestamp,
//         "reward": reward == null ? null : reward,
//         "percent": percent == null ? null : percent,
//         "immature": immature == null ? null : immature,
//         "orphan": orphan == null ? null : orphan,
//         "uncle": uncle == null ? null : uncle,
//     };
// }

// class Stats {
//     Stats({
//         required this.balance,
//         required this.immature,
//         required this.lastShare,
//         required this.paid,
//         required this.pending,
//     });

//     int balance;
//     int immature;
//     int lastShare;
//     int paid;
//     int pending;

//     factory Stats.fromJson(String str) => Stats.fromMap(json.decode(str));

//     String toJson() => json.encode(toMap());

//     factory Stats.fromMap(Map<String, dynamic> json) => Stats(
//         balance: json["balance"] == null ? null : json["balance"],
//         immature: json["immature"] == null ? null : json["immature"],
//         lastShare: json["lastShare"] == null ? null : json["lastShare"],
//         paid: json["paid"] == null ? null : json["paid"],
//         pending: json["pending"] == null ? null : json["pending"],
//     );

//     Map<String, dynamic> toMap() => {
//         "balance": balance == null ? null : balance,
//         "immature": immature == null ? null : immature,
//         "lastShare": lastShare == null ? null : lastShare,
//         "paid": paid == null ? null : paid,
//         "pending": pending == null ? null : pending,
//     };
// }

// class Sumreward {
//     Sumreward({
//         required this.inverval,
//         required this.reward,
//         required this.numreward,
//         required this.name,
//         required this.offset,
//     });

//     int inverval;
//     int reward;
//     int numreward;
//     String name;
//     int offset;

//     factory Sumreward.fromJson(String str) => Sumreward.fromMap(json.decode(str));

//     String toJson() => json.encode(toMap());

//     factory Sumreward.fromMap(Map<String, dynamic> json) => Sumreward(
//         inverval: json["inverval"] == null ? null : json["inverval"],
//         reward: json["reward"] == null ? null : json["reward"],
//         numreward: json["numreward"] == null ? null : json["numreward"],
//         name: json["name"] == null ? null : json["name"],
//         offset: json["offset"] == null ? null : json["offset"],
//     );

//     Map<String, dynamic> toMap() => {
//         "inverval": inverval == null ? null : inverval,
//         "reward": reward == null ? null : reward,
//         "numreward": numreward == null ? null : numreward,
//         "name": name == null ? null : name,
//         "offset": offset == null ? null : offset,
//     };
// }

// class Workers {
//     Workers({
//         required this.the6600Xt,
//     });

//     The6600Xt the6600Xt;

//     factory Workers.fromJson(String str) => Workers.fromMap(json.decode(str));

//     String toJson() => json.encode(toMap());

//     factory Workers.fromMap(Map<String, dynamic> json) => Workers(
//         the6600Xt: json["6600XT"] == null ? null : The6600Xt.fromMap(json["6600XT"]),
//     );

//     Map<String, dynamic> toMap() => {
//         "6600XT": the6600Xt == null ? null : the6600Xt.toMap(),
//     };
// }

// class The6600Xt {
//     The6600Xt({
//         required this.lastBeat,
//         required this.hr,
//         required this.offline,
//         required this.hr2,
//         required this.rhr,
//         required this.sharesValid,
//         required this.sharesInvalid,
//         required this.sharesStale,
//     });

//     int lastBeat;
//     int hr;
//     bool offline;
//     int hr2;
//     int rhr;
//     int sharesValid;
//     int sharesInvalid;
//     int sharesStale;

//     factory The6600Xt.fromJson(String str) => The6600Xt.fromMap(json.decode(str));

//     String toJson() => json.encode(toMap());

//     factory The6600Xt.fromMap(Map<String, dynamic> json) => The6600Xt(
//         lastBeat: json["lastBeat"] == null ? null : json["lastBeat"],
//         hr: json["hr"] == null ? null : json["hr"],
//         offline: json["offline"] == null ? null : json["offline"],
//         hr2: json["hr2"] == null ? null : json["hr2"],
//         rhr: json["rhr"] == null ? null : json["rhr"],
//         sharesValid: json["sharesValid"] == null ? null : json["sharesValid"],
//         sharesInvalid: json["sharesInvalid"] == null ? null : json["sharesInvalid"],
//         sharesStale: json["sharesStale"] == null ? null : json["sharesStale"],
//     );

//     Map<String, dynamic> toMap() => {
//         "lastBeat": lastBeat == null ? null : lastBeat,
//         "hr": hr == null ? null : hr,
//         "offline": offline == null ? null : offline,
//         "hr2": hr2 == null ? null : hr2,
//         "rhr": rhr == null ? null : rhr,
//         "sharesValid": sharesValid == null ? null : sharesValid,
//         "sharesInvalid": sharesInvalid == null ? null : sharesInvalid,
//         "sharesStale": sharesStale == null ? null : sharesStale,
//     };
// }
