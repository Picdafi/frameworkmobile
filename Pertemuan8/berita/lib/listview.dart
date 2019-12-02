import 'dart:async';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;


class Job {
  final int id;
  final String position;
  final String company;
  final String description;

  Job({this.id, this.position, this.company, this.description});

  factory Job.fromJson(Map<String, dynamic> json) {
    return Job(
      id: json['id'],
      position: json['position'],
      company: json['company'],
      description: json['description'],
    );
  }
}

class LatListView extends StatelessWidget {
  BuildContext get context => null;



  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Job>>(
      future: _fetchJobs(),
      builder: (BuildContext context, snapshot) {
        if (snapshot.hasData) {
          List<Job> data = snapshot.data;
          return _LatListView(data);
        } else if (snapshot.hasError) {
          return Text("${snapshot.error}");
        }
        return CircularProgressIndicator();
      },
    );
  }

  Future<List<Job>> _fetchJobs() async {

    final jobsListAPIUrl = 'https://mock-json-service.glitch.me/';
    final response = await http.get(jobsListAPIUrl);

    if (response.statusCode == 200) {
      List jsonResponse = json.decode(response.body);
      return jsonResponse.map((job) => new Job.fromJson(job)).toList();
    } else {
      throw Exception('maaf, belum bisa');
    }
  }

  ListView _LatListView(data) {
    return ListView.builder(
        itemCount: data.length,
        itemBuilder: (BuildContext context, int index) {
          return _tile(
              data[index].position, 
              data[index].company, 
              Icons.work);
          
        });
  }

  ListTile _tile(String title, String subtitle, IconData icon) => ListTile(
    title: Text(title,
        style: TextStyle(
          fontWeight: FontWeight.w500,
          fontSize: 20,
        )),
    subtitle: Text(subtitle),
//    onTap: (){
//    Navigator.push(context, new MaterialPageRoute(builder: (context) => Detail()));

//    },
//      onTap: (){
//      Navigator.push(context, new MaterialPageRoute(builder: (context)=> Detail(Job())));
//      },
  onLongPress: (){
      var push = Navigator.push(context, Detail(AppBar));
  },
    leading: Icon(
      icon,
      color: Colors.blue[500],
    ),
  );

}


class Detail extends StatelessWidget{
//  final Job job;
//  Detail(this.job);

@override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Halaman selanjutnya'),
      ),
      body: Text('Halaman Body selanjutnya'),
    );
  }
}