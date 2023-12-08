class ChurchModel {
  final int id;
  final String date;
  final String title;
  final String event;

  ChurchModel({required this.id, required this.date,required this.title, required this.event});
}

/*
ListView.builder(
itemBuilder: (context,index)=>EventButton(
churchModel: ,
)
,itemCount: churchModelList.length,)*/
