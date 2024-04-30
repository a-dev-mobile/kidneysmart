import 'package:async/async.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

class CarouselItems extends StatefulWidget {
  const CarouselItems({
    required this.items,
    required this.widthItem,
    required this.heightItem,
    required this.insetRightItem,
    super.key,
  });

  final List<Widget> items;
  final double widthItem;
  final double heightItem;
  final double insetRightItem;

  @override
  State<CarouselItems> createState() => _CarouselItemsState();
}

class _CarouselItemsState extends State<CarouselItems>
    with SingleTickerProviderStateMixin {
  late final ScrollController _scrollController;
  late List<Widget> _items;
  late Ticker _ticker;
  CancelableOperation<void>? _operation;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: (_) {
        _ticker.stop();
        _operation?.cancel();
      },
      behavior: HitTestBehavior.opaque,
      child: NotificationListener<ScrollNotification>(
        onNotification: (notification) {
          if (notification is ScrollEndNotification &&
              widget.items.length >= 2) {
            _restartTicker();
          }

          return true;
        },
        child: SizedBox(
          height: widget.heightItem,
          child: ListView.separated(
            controller: _scrollController,
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.symmetric(horizontal: 20),
            itemCount: _items.length,
            separatorBuilder: (context, index) =>
                SizedBox(width: widget.insetRightItem),
            itemBuilder: (context, index) => SizedBox(
              width: widget.widthItem,
              height: widget.heightItem,
              child: _items[index],
            ),
          ),
        ),
      ),
    );
  }

  @override
  void initState() {
    final items = widget.items;
    final initialScrollOffset =
        items.length >= 2 ? items.length * widget.widthItem : 0.0;
    _scrollController =
        ScrollController(initialScrollOffset: initialScrollOffset);
    _ticker = createTicker(_onTick);

    if (items.length >= 2) {
      _items = [
        ...items,
        ...items,
        ...items,
        ...items,
        ...items,
      ];
      _scrollController.addListener(_scrollControllerListener);
      final _ = _ticker.start();
    } else {
      _items = items;
    }

    super.initState();
  }

  @override
  void dispose() {
    _scrollController.dispose();
    _ticker.dispose();
    _operation?.cancel();
    super.dispose();
  }

  void _onTick(Duration duration) {
    if (_scrollController.hasClients) {
      _scrollController.position
          .moveTo(_scrollController.position.pixels + 0.3);
    }
  }

  Future<void> _restartTicker() async {
    await _operation?.cancel();
    _operation = CancelableOperation.fromFuture(
      Future.delayed(const Duration(seconds: 3)),
    );
    await _operation!.value.then((_) {
      if (mounted) _ticker.start();
    });
  }

  void _scrollControllerListener() {
    if (_scrollController.position.pixels >=
        _scrollController.position.maxScrollExtent) {
      setState(() => _items.addAll(widget.items));
    }

    if (_scrollController.position.pixels <=
        _scrollController.position.minScrollExtent) {
      final newItems = widget.items.reversed;
      _items.insertAll(0, widget.items.reversed);
      setState(() {});
      _scrollController.jumpTo(
        _scrollController.position.pixels +
            (newItems.length * (widget.widthItem + widget.insetRightItem)),
      );
    }
  }
}
